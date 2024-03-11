provider "azurerm" {
  version = "<=2.0.0"

  subscription_id = var.subscriptionID
  client_id = var.clientID
  client_secret = var.clientSecret
  tenant_id = var.tenantID

  features {}
}

module "storage_account" {
  source = "./modules/sta"
  location = var.location
  storage_account_name = var.STAName
  resource_group_name = var.RGName
}

resource "azurerm_resource_group" "tfrg_name" {
  name = var.RGName
  location = var.location
}
