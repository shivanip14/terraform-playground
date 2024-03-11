variable "location" {}
variable "RGName" {}
variable "STAName" {}

resource "azurerm_storage_account" "storage_account" {
  name = var.STAName
  location = var.location
  reource_group_name = var.RGName
}
