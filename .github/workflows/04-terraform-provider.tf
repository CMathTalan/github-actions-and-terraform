# Define Terraform provider
terraform {
  required_version = ">= 1.3"
  backend "azurerm" {
    resource_group_name  = "github-actions-and-terraform-rg"
    storage_account_name = "terraform2182"
    container_name       = "core-tfstate"
    key                  = "actions.tfstate"
  }
  required_providers {
    azurerm = {
      version = "=3.2"
      source  = "hashicorp/azurerm"
    }
  }
}

# Configure the Azure provider
provider "azurerm" { 
  features {}  
}
