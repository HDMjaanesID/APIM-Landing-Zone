#################################################################################################################
# Common #
location = "eastus"
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
workload_name = "cat-ecommerce-to-d365-api"
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

