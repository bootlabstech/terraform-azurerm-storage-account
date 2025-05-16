resource "azurerm_storage_account" "example" {
  name                             = var.name
  resource_group_name              = var.resource_group_name
  location                         = var.location
  account_tier                     = var.account_tier
  account_replication_type         = var.account_replication_type
  min_tls_version                  = var.min_tls_version
  cross_tenant_replication_enabled = var.cross_tenant_replication_enabled
  allow_nested_items_to_be_public  = var.allow_nested_items_to_be_public
  shared_access_key_enabled        = var.shared_access_key_enabled
  public_network_access_enabled    = var.public_network_access_enabled
  enable_https_traffic_only        = var.enable_https_traffic_only
  account_kind                     = var.account_kind
  identity {
    type = var.type
  }
  network_rules {
    default_action = "Deny"
    ip_rules       = ["100.0.0.1"]
    bypass =  ["AzureServices" ]
  }

  lifecycle {
    ignore_changes = [
      tags,
      custom_domain
    ]
  }

}