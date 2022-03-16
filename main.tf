terraform {
  backend "azurerm" {
    resource_group_name  = "storaage1"
    storage_account_name = "nagrajustorage"
    container_name       = "dev"
    key                  = "terraform.dev"
    access_key           = "XPYLm7XT419pst32YNAJS3YdJmoAQukY9cGjZzJlnqv8ICLI3UpvSGadqyidBztIBJekf8mZsEC/+ASttHMOIQ=="
  }
}
resource "azurerm_resource_group" "storaage1" {
  name     = "azurerm_resource_group.storaage1"
  location = "East US"
  tags = {
    name = "storage1"
  }
}
