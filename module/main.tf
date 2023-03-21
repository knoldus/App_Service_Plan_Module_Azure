resource "azurerm_resource_group" "rg" {
  name = var.rg_name
  location = var.location
}

resource "azurerm_app_service_plan" "example" {
  name                     = var.app_service_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  kind                     = var.azurerm_app_service_kind

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

