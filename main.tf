provider "azurerm" {
  subscription_id = var.subscriptionID
  client_id = var.clientID
  client_secret = var.clientSecret
  tenant_id = var.tenantID

  features {}
}

module "resource_group" {
  source = "./modules/rg"
  location = var.location
  RGName = var.RGName
}

module "storage_account" {
  source = "./modules/sta"
  location = var.location
  STAName = var.STAName
  RGName = var.RGName
}
