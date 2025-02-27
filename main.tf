
#region Environments
module "DevEnvironment" {
  source                  = "./module/env"
  env_name                = "dev"
  location                = "eastus"
  os_type                 = "Linux"
  sku_name                = "B1"
  resource_group_name     = local.resource_group_name
  resource_group_location = local.resource_group_location
}
#endregion
