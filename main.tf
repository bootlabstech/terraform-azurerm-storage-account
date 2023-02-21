# Create a resource group
data "azurerm_resource_group" "bootlab_rg" {
  name = var.group_name
}
resource "random_string" "storage_account_random_suffix" {
  length  = 8
  special = false
  lower   = true
  upper   = false
}

resource "azurerm_storage_account" "assets" {
  name                              = "${var.storage_account_name}${random_string.storage_account_random_suffix.id}"
  resource_group_name               = data.azurerm_resource_group.bootlab_rg.name
  location                          = data.azurerm_resource_group.bootlab_rg.location
  account_tier                      = "Standard"
  account_replication_type          = var.file_storage_account_replication_type
  enable_https_traffic_only         = true
  allow_nested_items_to_be_public   = true
  infrastructure_encryption_enabled = true
  shared_access_key_enabled         = true

  network_rules {
    default_action = "Deny"
    bypass         = ["AzureServices"]
  }

  blob_properties {
    delete_retention_policy {
      days = 7
    }

    container_delete_retention_policy {
      days = 7
    }
  }

  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
    ]
  }
}


#resource "azurerm_storage_share" "storage_share" {
#  for_each             = { for storage in var.file_storage_list : storage.name => storage }
#  name                 = each.key
#  storage_account_name = azurerm_storage_account.assets.name
#  quota                = each.value.quota
#}

#resource "azurerm_storage_container" "storage_container" {
#  for_each              = { for storage in var.container_set : storage.name => storage }
#  name                  = each.key
#  storage_account_name  = azurerm_storage_account.assets.name
#  container_access_type = "private"
#}

#resource "azurerm_storage_queue" "queues" {
#  for_each             = { for storage in var.queues_set : storage.name => storage }
#  name                 = each.key
#  storage_account_name = azurerm_storage_account.assets.name
#}

#resource "azurerm_storage_table" "tables" {
#  for_each             = { for storage in var.tables_set : storage.name => storage }
#  name                 = each.key
#  storage_account_name = azurerm_storage_account.assets.name
#}
