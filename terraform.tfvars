#################################################################################################################
# Common #
#################################################################################################################

#################################################################################################################
# APIM #
publisher_name = "CAT-Ziegler"
apim_subnet_id = "cat-dealer-integ-apim-subnet"
workspace_id = "cat-dealer-integ-log-analytics-ws"
instrumentation_key = "cat-dealer-integ-appinsights-instr-key"
##################################################################################################################

##################################################################################################################
# backend #
storage_replication_type = "GRS"
backend_subnet_id = "cat-dealer-integ-backend-subnet"

###################################################################################################################
# gateway #
resource_group_name = "rg-apim-gw"
resource_group_location = "eastus"
secret_name = "apim-key-vault"
app_gateway_certificate_type = "selfsigned"
certificate_password = "apimcert100"
subnet_id = "cat-dealer-integ-app-gw-subnet"
#################################################################################################################

###############################################################################################################
# networking #
#################################################################################################################

#################################################################################################################
# service-suffix #
######################################################################################################################

#######################################################################################################################
# shared #
variable "vm_username" {
  type        = string
  description = "Agent VM username"
}

variable "vm_password" {
  description = "Agent VM Password"
  type        = string
  sensitive   = true
}

variable "cicd_agent_type" {
  type        = string
  description = "The CI/CD platform to be used, and for which an agent will be configured for the ASE deployment. Specify 'none' if no agent needed')"
  default     = "none"
  validation {
    condition     = contains(["azuredevops", "github", "none"], var.cicd_agent_type)
    error_message = "Valid values for var: deployment_environment are (azuredevops, github, none)."
  }
}

variable "personal_access_token" {
  type        = string
  description = "Azure DevOps or GitHub personal access token (PAT) used to setup the CI/CD agent"
  sensitive   = true
}

variable "account_name" {
  type        = string
  description = "The Azure DevOps or GitHub account name to be used when configuring the CI/CD agent, in the format https://dev.azure.com/ORGNAME OR github.com/ORGUSERNAME OR none"
  default     = "none"
}

variable "pool_name" {
  type        = string
  description = "The name Azure DevOps or GitHub pool for this build agent to join. Use 'Default' if you don't have a separate pool"
  default     = "default"
}

variable "cicd_spn_client_id" {
  description = "Deployment service principal client ID for CICD agent to grant access to shared key vault."
  type        = string
  default     = null
}

