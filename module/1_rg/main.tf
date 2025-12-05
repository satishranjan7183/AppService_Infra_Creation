resource "azurerm_resource_group" "rg" {
  for_each = var.rg1varchild
  name     = each.key
  location = each.value
}


