variable "location" {}
variable "RGName" {}

resource "azurerm_resource_group" "tfrg_name" {
  name = var.RGName
  location = var.location
}
