output "resource_group_id" {
  value = azurerm_resource_group.demorg.id
}

output "resource_group_name" {
  value = azurerm_resource_group.demorg.name
}

output "resource_group_location" {
  value = azurerm_resource_group.demorg.location
}

output "storage_account_id" {
  value = azurerm_storage_account.demostg.id
}

output "storage_account_name" {
  description = "storage account name"
  value       = azurerm_storage_account.demostg.name
}