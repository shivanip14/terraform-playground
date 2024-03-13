variable "location" {}
variable "RGName" {}

# The second argument below ("tfrg_name") is an identifier in this TF project for this resource group.
# It is a logical name that can be used to refer to the RG's properties somewhere else,
# and has no impact on the actual name of the RG in Azure.

resource "azurerm_resource_group" "tfrg_name" {
  name = var.RGName
  location = var.location
}
