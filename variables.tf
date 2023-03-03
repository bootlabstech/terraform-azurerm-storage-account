variable "name" {
  type        = string
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

variable "resource_group_name" {
  type        = string
  description = "name of the storage account"
}

variable "location" {
  type        = string
  description = "replication type of file storage, LRS in uat and GRS in prod"
}

variable "account_kind" {
  description = "List of containers to create and their access levels."
  type        = string
}

variable "account_tier" {
  description = "List of containers to create and their access levels."
  type        = string

}

variable "storage_account_replication_type" {
  description = "List of storages queues"
  type        = string

}

