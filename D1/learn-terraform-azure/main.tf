# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
/* 
  client_id       = "c264db37-b9b2-430d-b821-ce65f0468871"
  client_secret   = ".2B8Q~ycjdrSMiNWa4q6VGs70o0AriybrF.kYdam"
  tenant_id       = "9ea95267-967f-430d-9c6e-15dd016792e2"
  subscription_id = "115d702d-6968-41b1-be25-0470b8242967" */
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"

  tags = {
    Environment = "Terraform Getting Started"
    Team = "DevOps"
  }
}

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "myTFVnet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}
