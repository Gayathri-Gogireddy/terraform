provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "demo_practice"
  location = "eastus"
}


resource "azurerm_storage_account" "example" {
  name                     = "hellodemo"
  resource_group_name      = azurerm_resource_group.example.demo_practice
  location                 = azurerm_resource_group.example.eastus
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
