#################################################################################################################
# APIM #
publisher_name = "CAT-Ziegler"
apim_subnet_id = "cat-dealer-integ-apim-subnet"
workspace_id = "cat-dealer-integ-log-analytics-ws"
instrumentation_key = "cat-dealer-integ-appinsights-instr-key"
##################################################################################################################

##################################################################################################################
# backend #
workload_name = "cat-ecommerce-to-d365-api"
variable "storage_account_tier" {
  description = "Defines the Tier to use for this storage account. Valid options are 'Standard' and 'Premium'. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
  default     = "Standard"
}

variable "storage_replication_type" {
  default     = "LRS"
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. Changing this forces a new resource to be created."
}

variable "resource_suffix" {
  description = ""
  type        = string
}

variable "sp_sku" {
  default = "P1v2"
  type    = string
}

variable "backend_subnet_id" {
  description = "Backend resources subnet id"
  type        = string
}
