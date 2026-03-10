resource "azurerm_private_dns_zone_virtual_network_link" "hackathon" {
  name                  = "exampleVnetZone.com"
  private_dns_zone_name = azurerm_private_dns_zone.example.name
  virtual_network_id    = azurerm_virtual_network.example.id
  resource_group_name   = azurerm_resource_group.example.name
  depends_on            = [azurerm_subnet.example]
}

resource "azurerm_postgresql_flexible_server" "hackathon-db" {
  name                          = "hackathon-psqlflexibleserver"
  resource_group_name           = azurerm_resource_group.hackathon.name
  location                      = azurerm_resource_group.hackathon.location
  version                       = "12"
  delegated_subnet_id           = azurerm_subnet.hackathon.id
  private_dns_zone_id           = azurerm_private_dns_zone.hackathon.id
  public_network_access_enabled = false
  administrator_login           = "psqladmin"
  administrator_password        = "H@Sh1CoR3!"
  zone                          = "1"

  storage_mb   = 32768
  storage_tier = "P4"

  sku_name   = "B_Standard_B1ms"
  depends_on = [azurerm_private_dns_zone_virtual_network_link.hackathon]

}
