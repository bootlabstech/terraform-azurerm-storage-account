variable "name" {
  type        = string
  description = "Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."

}
variable "resource_group_name" {
  type        = string
  description = " The name of the resource group in which to create the storage account."

}
variable "location" {
  type        = string
  description = " Specifies the supported Azure location where the resource exists."

}
variable "account_kind" {
  description = "Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Defaults to StorageV2."
  type        = string

}
variable "account_tier" {
  type        = string
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created"
  default     = "Standard"

}
variable "account_replication_type" {
  type        = string
  description = " Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS."
  default     = "LRS"

}
variable "allow_nested_items_to_be_public" {
  description = " Allow or disallow nested items within this Account to opt into being public. Defaults to true."
  type        = bool
  default     = true

}
variable "shared_access_key_enabled" {
  description = "ndicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). The default value is true."
  type        = bool
  default     = true

}
variable "min_tls_version" {
  type        = string
  description = "valThe minimum supported TLS version for the storage account. Possible values are TLS1_0, TLS1_1, and TLS1_2. Defaults to TLS1_2 for new storage accounts.ue"
  default     = "TLS1_2"

}
variable "access_tier" {
  type        = string
  description = "Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts. Valid options are Hot and Cool, defaults to Hot."
  default     = "Hot"

}
variable "public_network_access_enabled" {
  description = "Whether the public network access is enabled? Defaults to true."
  type        = bool
  default     = true

}
variable "is_hns_enabled" {
  type = bool
  default = false
  
}
