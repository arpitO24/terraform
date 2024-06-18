
# output "workspace" {
#   value = azurerm_log_analytics_workspace.workspace
# }

output "id" {
  value = azurerm_log_analytics_workspace.workspace.id
}

output "name" {
  value = azurerm_log_analytics_workspace.workspace.name
}

output "sku" {
  value = azurerm_log_analytics_workspace.workspace.sku
}

output "retention_in_days" {
  value = azurerm_log_analytics_workspace.workspace.retention_in_days
}

output "daily_quota_gb" {
  value = azurerm_log_analytics_workspace.workspace.daily_quota_gb
}
