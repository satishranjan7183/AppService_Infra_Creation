# -------------------------------
#WEBSITE — App Service
# -------------------------------
resource "azurerm_linux_web_app" "static_app" {
    for_each = var.webappvarchild
  name                = each.key
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  service_plan_id     = data.azurerm_service_plan.app_service_plan[each.key].id

  identity {
    type = "SystemAssigned"
  }

  site_config {
    application_stack {
     node_version = "18-lts"
    }
  }
}