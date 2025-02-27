
#region Environments
module "DevEnvironment" {
  source   = "./module/env"
  env_name = "dev"
  location = "eastus"
  os_type  = "Linux"
  sku_name = "B1"
}
#endregion
