# Creates a Storage account
resource "azurerm_storage_account" "example" {
  name                                = var.name
  resource_group_name                 = var.resource_group_name
  location                            = var.location
  account_kind                        = var.account_kind
  account_tier                        = var.account_tier
  account_replication_type            = var.account_replication_type
  cross_tenant_replication_enabled    = var.cross_tenant_replication_enabled
  access_tier                         = var.access_tier
  enable_https_traffic_only           = var.enable_https_traffic_only
  min_tls_version                     = var.min_tls_version
  allow_nested_items_to_be_public     = var.allow_nested_items_to_be_public
  shared_access_key_enabled           = var.shared_access_key_enabled
  public_network_access_enabled       = var.public_network_access_enabled
  default_to_oauth_authentication     = var.default_to_oauth_authentication
  queue_encryption_key_type           = var.queue_encryption_key_type
  table_encryption_key_type           = var.table_encryption_key_type
  infrastructure_encryption_enabled   = var.infrastructure_encryption_enabled
  # edge_zone                           = var.edge_zone
  # is_hns_enabled                      = var.is_hns_enabled
  # nfsv3_enabled                       = var.nfsv3_enabled
  # large_file_share_enabled            = var.large_file_share_enabled
  # allowed_copy_scope                  = var.allowed_copy_scope
  # sftp_enabled                        = var.sftp_enabled


  # dynamic "blob_properties" {
  #   for_each = var.account_kind == "BlobStorage" ? [1] : []
  #   content {
  #     versioning_enabled = var.versioning_enabled
  #     change_feed_enabled = var.change_feed_enabled
  #     last_access_time_enabled = var.last_access_time_enabled
  #     delete_retention_policy {
  #       days = 7
  #     }
  #     container_delete_retention_policy {
  #       days = 7
  #     }


      
  #   }}

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }

  }

 