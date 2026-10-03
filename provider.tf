
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-statefile"
    storage_account_name = "stagefile123321"
    container_name       = "tfstate"
    key                  = "pt.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "48d1c3d5-8796-4a68-8d00-c1d89903818f"
}