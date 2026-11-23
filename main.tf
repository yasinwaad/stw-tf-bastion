resource "azurerm_subnet" "bastion" {
  name                 = local.bastion_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.bastion_subnet_address_prefixes
}

resource "azurerm_bastion_host" "this" {
  name                = local.bastion_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = local.common_tags

  ip_configuration {
    name                 = local.ip_configuration_name
    subnet_id            = azurerm_subnet.bastion.id
    public_ip_address_id = var.public_ip_id
  }
}