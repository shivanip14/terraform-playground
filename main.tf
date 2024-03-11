provider "azurerm" {
  subscription_id = var.subscriptionID
  client_id = var.clientID
  client_secret = var.clientSecret
  tenant_id = var.tenantID

  features {}
}

module "storage_account" {
  source = "./modules/sta"
  location = var.location
  STAName = var.STAName
  RGName = var.RGName
}

resource "azurerm_resource_group" "tfrg_name" {
  name = var.RGName
  location = var.location
}
