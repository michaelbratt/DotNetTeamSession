resource "azurerm_linux_web_app" "webapp" {
  name                = "CBS-${var.env_name}-${basename(path.module)}"
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id
  https_only          = true
  site_config {
    minimum_tls_version = "1.2"
    application_stack {
      node_version = "16-lts"
    }
  }
}

resource "azurerm_app_service_source_control" "sourcecontrol" {
  app_id                 = azurerm_linux_web_app.webapp.id
  repo_url               = var.repo_url
  branch                 = var.branch
  use_manual_integration = true
  use_mercurial          = false
}
