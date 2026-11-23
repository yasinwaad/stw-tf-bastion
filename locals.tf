locals {
  bastion_name          = "bas-${var.project_name}-${var.environment}-${var.location}"
  bastion_subnet_name   = "AzureBastionSubnet"
  ip_configuration_name = "ipconfig-${var.project_name}-${var.environment}-${var.location}"

  common_tags = {
    project = var.project_name
    owner   = var.owner
  }
}