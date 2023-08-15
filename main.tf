provider "azurerm" {
  features {}
}

resource "random_string" "myrandom" {
  length  = 6
  special = false
  upper   = false
  numeric = false
}

resource "azurerm_resource_group" "demorg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "demostg" {
  name                     = "${var.storage_account_name}${random_string.myrandom.id}"
  resource_group_name      = azurerm_resource_group.demorg.name
  location                 = azurerm_resource_group.demorg.location
  account_kind             = var.storage_account_kind
  account_tier             = var.storage_account_tier
  account_replication_type = var.account_replication_type

  static_website {
    error_404_document = var.static_website_error_404_document
    index_document     = var.static_website_index_document
  }
}