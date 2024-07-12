resource "azurerm_virtual_network" "sample" {
  name                = var.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.sample.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2_name
  resource_group_name  = azurerm_resource_group.sample.name
  virtual_network_name = azurerm_virtual_network.sample.name
  address_prefixes     = ["10.0.2.0/24"]
}