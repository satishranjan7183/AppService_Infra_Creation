data "azurerm_service_plan" "app_service_plan" {
  for_each            = var.webappvarchild
  name                = each.value.appserviceplanname
  resource_group_name = each.value.resource_group_name
}