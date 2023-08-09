terraform {
    backend "azurerm"{
        resource_group_name = "RGPandas"
        storage_account_name = "stalmacenpandas"
        container_name = "contenedorpandas"
        key = "panditas.tfstate"
    }
}


provider "azurerm" {
    features {}
}

# Create a resource group
resource "azurerm_resource_group" "main" {
  name     = "${var.owner}-resourcegroup"
  location = var.location
}
