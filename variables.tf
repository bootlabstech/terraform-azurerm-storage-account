variable "name" {
  type        = string
  description = "value"

}
variable "resource_group_name" {
  type        = string
  description = "value"

}
variable "location" {
  type        = string
  description = "value"

}
variable "account_tier" {
  type        = string
  description = "value"
  default     = "Standard"

}
variable "account_kind" {
  description = "value"
  type        = string
  # default     = "BlobStorage"

}
variable "account_replication_type" {
  type        = string
  description = "value"
  default     = "LRS"

}
variable "cross_tenant_replication_enabled" {
  type        = bool
  description = "value"
  default     = true

}
variable "access_tier" {
  type        = string
  description = "value"
  default     = "Hot"

}
variable "https_traffic_only_enabled" {
  description = "value"
  type        = bool
  default     = true

}
variable "min_tls_version" {
  type        = string
  description = "value"
  default     = "TLS1_2"

}
variable "allow_nested_items_to_be_public" {
  description = "value"
  type        = bool
  default     = true

}
variable "shared_access_key_enabled" {
  description = "value"
  type        = bool
  default     = true

}
variable "public_network_access_enabled" {
  description = "value"
  type        = bool
  default     = true

}
variable "default_to_oauth_authentication" {
  description = "value"
  type        = bool
  default     = false

}
variable "queue_encryption_key_type" {
  type        = string
  description = "value"
  default     = "Service"

}
variable "table_encryption_key_type" {
  type        = string
  description = "value"
  default     = "Service"

}
variable "infrastructure_encryption_enabled" {
  description = "value"
  type        = bool
  default     = false

}

variable "versioning_enabled" {
    type = bool
    description = "value"
    default     = false

}
variable "change_feed_enabled" {
    type = bool
    description = "value"
    default     = false

}
variable "last_access_time_enabled" {
    type = bool
    description = "value"
    default     = false

}