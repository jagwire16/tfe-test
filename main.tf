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

locals {
  resource_group_name = formatdate("YYYY-MM-DD-hhmmss", timestamp())
}

variable "location" {
  type = string
  default = "USGov Virginia"
}

resource "azurerm_resource_group" "test_resource_group" {
  name = "rg-test-${local.resource_group_name}"
  location = var.location
}
