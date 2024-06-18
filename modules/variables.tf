variable "resource_group_name" {
  description = "(Required) Specifies the resource group name"
  type        = string
}

variable "resource_group_location" {
  description = "(Optional) Specifies the location of the resource group (default is 'West Europe')"
  type        = string
  default     = "West europe"
}
variable "name" {
  description = "(Required) Specifies the name of the log analytics workspace"
  type        = string
}

variable "sku" {
  description = "(Optional) Specifies the sku of the log analytics workspace"
  type        = string
  default     = "PerGB2018"

  validation {
    condition     = contains(["Free", "Standalone", "PerNode", "PerGB2018"], var.sku)
    error_message = "The log analytics sku is incorrect."
  }
}

variable "retention_in_days" {
  description = " (Optional) Specifies the workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730."
  type        = number
  default     = 30
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource, for categorization"
  type        = map(any)
  default = {
    business_criticality  = "unknown"
    business_unit         = "devops"
    cost_center           = "ayo"
    country_code          = "core"
    environment           = "core"
    operations_commitment = "platform_operations"
    operations_team       = "devops"
    workload_name         = "unspecified"
    owner                 = "devops@ayo4u.com"
    deploymentType        = "automated"
  }
}
