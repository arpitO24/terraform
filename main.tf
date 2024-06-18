module "mod_log_analytics_workspace" {
  for_each                    = var.log_analytics_workspaces
  source                      = "./modules"
  name                        = each.key
  resource_group_name         = each.value.rg_name
  sku                         = each.value.sku
  retention_in_days           = each.value.retention_in_days
  tags                        = each.value.tags
}