provider "azurerm" {
  features {}
  subscription_id = "a8cebfe1-cec0-478c-97e2-a3d5999d9553"
}

module "frontdoor_waf" {
  source              = "./.."
  resource_group_name = var.resource_group_name
  frontdoor_wafs      = var.frontdoor_wafs
  custom_rules        = var.custom_rules
  managed_rules       = var.managed_rules
  tags                = var.tags
}
