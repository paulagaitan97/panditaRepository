terraform {
    backend "azurerm"{
        resource_group_name = "TerraformResourcesGroup"
        storage_account_name = "storagepandas"
        container_name = "containerofpandas"
        key = "panditastfstate"
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
