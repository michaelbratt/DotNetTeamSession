# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "${var.env_name}-rg"
  location = var.location
}

# App Service Plan
resource "azurerm_service_plan" "appserviceplan" {
  name                = "${var.env_name}-asp"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = var.os_type
  sku_name            = var.sku_name
}

# App 1
module "App1" {
  source              = "../app"
  env_name            = var.env_name
  app_name            = "App1"
  repo_url            = "https://github.com/Azure-Samples/nodejs-docs-hello-world"
  branch              = "main"
  appserviceplan      = azurerm_service_plan.appserviceplan
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  service_plan_id     = azurerm_service_plan.appserviceplan.id
}

# App 2
module "App2" {
  source              = "../app"
  env_name            = var.env_name
  app_name            = "App2"
  repo_url            = "https://github.com/Azure-Samples/nodejs-docs-hello-world"
  branch              = "main"
  appserviceplan      = azurerm_service_plan.appserviceplan
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  service_plan_id     = azurerm_service_plan.appserviceplan.id
}
