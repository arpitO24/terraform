subscription_id      = "52e4867e-b768-4103-9d7c-9695e556dae9"
core_subscription_id = "fbe31a1f-7cb4-4eb6-8b38-e5a6d7d831db"
rg_name              = "rg-weu-production-shared-conn-01"
app_rg_name          = "rg-weu-production-shared-app-01"
data_rg_name         = "rg-weu-production-shared-data-01"
def_rg_name          = "rg-weu-production-shared-def-01"


tags = {
  workload_name = "non_transactional"
  business_criticality = "high"
  business_unit = "devops_chapter"
  operations_commitment = "platform_operations"
  operations_team = "devops"
  cost_center = "ayo_holdings"
  country_code = "production"
  environment = "production"
  data_classification   = "confidential"
  pipeline = "production-terraform-project-azure-shared"
}



log_analytics_workspaces = {
  "logs-weu-production-workspace-01"={
    rg_name                 = "rg-weu-production-shared-conn-01"
    sku                     = "PerGB2018"
    retention_in_days       = 90
    tags = {
      business_criticality  = "unknown"
      business_unit         = "devops"
      cost_center           = "ayo"
      country_code          = "shared"
      environment           = "shared"
      operations_commitment = "platform_operations"
      operations_team       = "devops"
      workload_name         = "log_analytics_workspace"
      owner                 = "devops"
      data_classification   = "confidential"
      pipeline              = "terraform-project-azure-shared"
      deploymentType        = "automated" 
      }
  }
  "logs-weu-production-sentinel-01"={
    rg_name                 = "rg-weu-production-shared-data-01"
    sku                     = "PerGB2018"
    retention_in_days       = 90
    tags = {
      business_criticality  = "unknown"
      business_unit         = ""
      cost_center           = "ayo"
      country_code          = "shared"
      environment           = "shared"
      operations_commitment = "platform_operations"
      operations_team       = "devops"
      workload_name         = "log_analytics_workspace"
      owner                 = "devops"
      data_classification   = "confidential"
      pipeline              = "terraform-project-azure-shared"
      deploymentType        = "automated" 
      }
  }
}