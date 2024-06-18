# tf_mod_az_loganalyticsworkspace

# Introduction 
This module is used to create the Azure Monitor resources which include the below

## Resources
- `Azure Log Analytics Workspace` - Fully managed service that helps secure remote access to your virtual machines.

## Usage

To use this module. You should you the below module reference in the root/main terraform configuration.

```
module "log_analytics_workspace" {
  source = "git@ssh.dev.azure.com:v3/aYo4u/code_repositories/tf_mod_az_loganalytics"

  # The below is provided from the Root/Main configuration for the project/workspace.
  resource_group_name = data.azurerm_resource_group.rg.name
  name                = var.log_analytics_name               # log analytics workspace name
  solution_plan_list  = var.solution_plan_list # list of solutions to add to the workspace
  sku = var.sku
}

```

## Inputs
The following varible imputs are required for using this module
  `resource_group_name` - Specifies the resource group name where bastion host will be deployed.
  `solution_plan_list` - Specifies the list of solutions to add to the Log Analytics workspace.

### Input Variables

### Environment Variables

## Tech Links
- [Azure Monitor](https://docs.microsoft.com/en-us/azure/azure-monitor/overview)
- [Log Analytics](https://docs.microsoft.com/en-us/azure/azure-monitor/logs/log-analytics-overview)
