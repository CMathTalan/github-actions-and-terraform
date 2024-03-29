# Define Terraform provider
terraform {
  backend "azurerm" {
    resource_group_name  = "github-actions-and-terraform-rg"
    storage_account_name = "terraform2182"
    container_name       = "core-tfstate"
    key                  = "actions.tfstate"
  }
  required_providers {
    azurerm = {
      version = "=2.98.0"
      source  = "hashicorp/azurerm"
    }
  }
}

# Configure the Azure provider
provider "azurerm" { 
  features {}  
}
