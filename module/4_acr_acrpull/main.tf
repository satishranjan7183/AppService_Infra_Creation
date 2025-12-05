resource "azurerm_container_registry" "acr" {
    for_each = var.acrvarchild
  name                = each.key
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  sku                 = "Standard"
  admin_enabled       = false       
}

# -------------------------------
# Give Both WebApps Permission to Pull Images from ACR
# -------------------------------

resource "azurerm_role_assignment" "static_acr_pull" {
    for_each = var.acrvarchild
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_linux_web_app.static_app.identity[0].principal_id
}

resource "azurerm_role_assignment" "dynamic_acr_pull" {
    for_each = var.acrvarchild
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_linux_web_app.dynamic_app.identity[0].principal_id
}
