resource "azurerm_subnet" "subnet" {
  name                 = each.key
  resource_group_name  = azurerm_resource_group.my_rg.name
  virtual_network_name = azurerm_virtual_network.my_virtual_network.name
  address_prefixes     = each.value.cidr_block

  for_each = var.subnets


}

