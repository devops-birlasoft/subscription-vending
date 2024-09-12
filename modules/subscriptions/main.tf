locals {
  module_source = lookup({ 
    "dev" = "./modules_dev", 
    "qa" = "./modules_qa", 
    "uat" = "./modules_uat",
    "prod" = "./modules_prod"}, var.environment, "./modules_dev")
}

data "azurerm_billing_enrollment_account_scope" "example" {
  billing_account_name    = var.billing_account_name
  enrollment_account_name = var.enrollment_account_name
}

resource "azurerm_subscription" "example" {
  subscription_name = var.subscription_name
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.example.id
}

module "azure_services" {
  source = local.module_source
  tags = var.mandatory_tags
}