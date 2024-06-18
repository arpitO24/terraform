terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  required_version = ">= 1.0.0"
}

# -----------------------------------------------------------------------------------------------
# Get data sources
# -----------------------------------------------------------------------------------------------
data "azurerm_resource_group" "analytics" {
  name     = var.resource_group_name
}
# ----------------------------------
# Azure Monitor Resources - All resources are found under Azure monitor
# -----------------------------------------------------------------------------------------------
# Log Analytics Workspace
# -----------------------------------------------------------------------------------------------

resource "azurerm_log_analytics_workspace" "workspace" {
  name                = var.name
  location            = data.azurerm_resource_group.analytics.location
  resource_group_name = data.azurerm_resource_group.analytics.name
  sku                 = var.sku
  retention_in_days   = var.retention_in_days
  tags                = var.tags
}
