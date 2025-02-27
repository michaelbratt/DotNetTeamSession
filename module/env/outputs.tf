output "env_name" {
  value = azurerm_resource_group.rg.name
}

output "app_service_plan_name" {
  value = azurerm_service_plan.appserviceplan.name
}

output "app_service_plan_id" {
  value = azurerm_service_plan.appserviceplan.id
}