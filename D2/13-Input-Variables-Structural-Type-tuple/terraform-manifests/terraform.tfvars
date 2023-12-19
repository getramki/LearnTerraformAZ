# Generic Variables
business_unit = "it"
environment = "dev"

# Resource Group Variables
resoure_group_name = "rg"
resoure_group_location = "eastus"

# DB Variables
db_name = "mydb101"
db_storage_mb = 5120
db_auto_grow_enabled = true
/*tdpolicy = {
    enabled = true
    retention_days = 10
    email_account_admins = true
    email_addresses = [ "none@example.com", "tf-az-examples@gmail.com" ]
}*/
tdpolicy = [true, 10, true, [ "none@example.com", "tf-az-examples@gmail.com" ]]
