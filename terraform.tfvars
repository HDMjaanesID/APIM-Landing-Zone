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
storage_replication_type = "GRS"
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
