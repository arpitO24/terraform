# -----------------------------------------------------------------------------------------------
# Common Variables Sourced from TFVARS
# -----------------------------------------------------------------------------------------------
variable "subscription_id" {
  type        = string
  description = "(optional) The subscription ID where the resources will be created"
}

variable "core_subscription_id" {
  type        = string
  description = "(optional) The subscription ID where the core resources will be read from"
}

variable "rg_name" {
  type        = string
  description = "Shared Connectivity Resource Group"
}

variable "data_rg_name" {
  description = "Shared Data Resource Group"
}

variable "app_rg_name" {
  description = "Shared Application Resource Group"
}

variable "def_rg_name" {
  description = "Shared Default Resource Group"
}

variable "tags" {
  type        = map(string)
  description = "Tags to describe the generic resource"
}

variable "log_analytics_workspaces" {
  type = map(object({
    rg_name                       = string
    sku                           = string
    tags                          = map(any)
    retention_in_days             = number
  }))
}