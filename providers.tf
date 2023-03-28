provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.6.0"
    }
  }
backend "azurerm" {
  resource_group_name   = "mk-terraform-infra"
  storage_account_name  = "terraformstatemkls"
  container_name        = "tstate"
  key                   = "yPmyBmjRlJ9Fg9ryTN2jNR2J3Dnfgv6SCTktX9XaqkUxiqaV33rhsg515vloZq5/Ok+axjvwXvDj+ASt8LXbpw=="
}  
}
