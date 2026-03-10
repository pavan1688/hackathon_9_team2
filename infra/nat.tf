resource "azurerm_nat_gateway" "hackathon-nat" {
  name                    = "hackathon-nat-gateway"
  location                = azurerm_resource_group.hackathon.location
  resource_group_name     = azurerm_resource_group.hackathon.name
  sku_name                = "Standard"
  idle_timeout_in_minutes = 10
  zones                   = ["1"]
}