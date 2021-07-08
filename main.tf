terraform {
  required_version = ">= 0.15"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.65"
    }
  }
}

provider "azurerm" {
  features {}
}

variable "resource_group_name" {
  type = string
  default = "rg-test-2021-07-07-2205"
}

variable "location" {
  type = string
  default = "USGov Virginia"
}

resource "azurerm_resource_group" "test_resource_group" {
  name = var.resource_group_name
  location = var.location
}
