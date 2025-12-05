# -------------------------------
# App Service Plan (Linux)
# -------------------------------
resource "azurerm_service_plan" "plan" {
    for_each =  var.serviceplan1varchild
  name                = each.key
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  os_type             = "Linux"
  sku_name            = "B1"
}