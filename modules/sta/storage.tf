variable "location" {}
variable "RGName" {}
variable "STAName" {}

resource "azurerm_storage_account" "storage_account" {
  name = var.STAName
  location = var.location
  resource_group_name = var.RGName
  account_replication_type = "GRS"
  account_tier = "Standard"
}
