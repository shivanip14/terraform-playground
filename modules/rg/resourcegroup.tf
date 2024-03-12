variable "location" {}
variable "RGName" {}

resource "azurerm_resource_group" {
  name = var.RGName
  location = var.location
}
