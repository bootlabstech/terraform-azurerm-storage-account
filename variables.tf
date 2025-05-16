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
variable "account_kind" {
  type        = string
  description = "value"
}
variable "account_tier" {
  type        = string
  description = "value"
  default     = "Premium"
}
variable "account_replication_type" {
  type        = string
  description = "value"
}
variable "min_tls_version" {
  type        = string
  description = "value"
  default     = "TLS1_2"
}
variable "cross_tenant_replication_enabled" {
  type        = bool
  description = "value"
  default     = true
}
variable "allow_nested_items_to_be_public" {
  type        = bool
  description = "value"
  default     = true
}
variable "shared_access_key_enabled" {
  type        = bool
  description = "value"
  default     = true
}
variable "public_network_access_enabled" {
  type        = bool
  description = "value"
  default     = true
}
variable "enable_https_traffic_only" {
  type = bool
  default = false
}
variable "type" {
  type        = string
  description = "value"
  default     = "SystemAssigned"
}
