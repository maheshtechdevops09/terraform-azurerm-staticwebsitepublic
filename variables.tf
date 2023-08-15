variable "resource_group_name" {
  description = "Provide the resource group name"
  type        = string
}

variable "location" {
  description = "Provide the resource group location"
  type        = string
}

variable "storage_account_name" {
  description = "Provide the Storage account name"
  type        = string
}

variable "storage_account_tier" {
  description = "Provide the Storage account tier"
  type        = string
}

variable "account_replication_type" {
  description = "Provide the Storage account replication_type"
  type        = string
}

variable "storage_account_kind" {
  description = "Provide the Storage account kind"
  type        = string
}

variable "static_website_index_document" {
  description = "provide the static website index document"
}

variable "static_website_error_404_document" {
  description = "provide the static website error 404 document"
}

