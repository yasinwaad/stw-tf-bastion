provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "rg-example-dev-southafricanorth"
  location = "southafricanorth"
}

resource "azurerm_virtual_network" "example" {
  name                = "vnet-example-dev-southafricanorth"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_public_ip" "example" {
  name                = "pip-bastion-example-dev-southafricanorth"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"
  sku                 = "Standard"
}

module "bastion" {
  source = "../.."

  project_name        = "example"
  environment         = "dev"
  owner               = "Yasin"
  resource_group_name = azurerm_resource_group.example.name
  vnet_name           = azurerm_virtual_network.example.name
  public_ip_id        = azurerm_public_ip.example.id
}