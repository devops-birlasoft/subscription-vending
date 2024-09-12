locals {
  module_source = lookup({
    "dev" = "https://github.com/devops-birlasoft/azure-services/dev",
    "qa"  = "https://github.com/devops-birlasoft/azure-services/qa",
    "uat" = "https://github.com/devops-birlasoft/azure-services/uat",
    "prod" = "https://github.com/devops-birlasoft/azure-services/prod" }, var.template,
  "https://github.com/devops-birlasoft/azure-services/dev")
}