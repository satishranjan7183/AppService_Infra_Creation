# -------------------------------
#WEBSITE — App Service
# -------------------------------
resource "azurerm_linux_web_app" "static_app" {
    for_each = var.webappvarchild
  name                = each.key
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  service_plan_id     = azurerm_service_plan.plan.id

  identity {
    type = "SystemAssigned"
  }

  site_config {
    application_stack {
      docker_image_name   = each.value.docker_image_name
      docker_registry_url = azurerm_container_registry.acr.login_server
    }
  }
}