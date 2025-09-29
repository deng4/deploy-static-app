terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.46.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "mywebapp-dependencies-rg"
    storage_account_name = "terraformsa2312"
    container_name       = "static-tfstate"
    key                  = "staticapp.terraform.tfstate"
  }
}