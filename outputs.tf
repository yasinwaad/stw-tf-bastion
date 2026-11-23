output "bastion_id" {
  description = "ID of the Bastion host."
  value       = azurerm_bastion_host.this.id
}

output "bastion_name" {
  description = "Name of the Bastion host."
  value       = azurerm_bastion_host.this.name
}

output "bastion_subnet_id" {
  description = "ID of the Bastion subnet."
  value       = azurerm_subnet.bastion.id
}