
resource "azurerm_storage_account" "assets" {
  name                              = var.name
  resource_group_name               = var.resource_group_name
  location                          = var.location
  account_kind                      = var.account_kind
  account_tier                      = var.account_tier
  account_replication_type          = var.storage_account_replication_type
  enable_https_traffic_only         = true
  allow_nested_items_to_be_public   = true
  infrastructure_encryption_enabled = true
  shared_access_key_enabled         = true

  network_rules {
    default_action = "Deny"
    ip_rules       = ["100.0.0.1"]
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
