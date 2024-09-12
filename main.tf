
module "subscription_vending" {
    source = "./modules/subscriptions"

    for_each = { for sub in var.subscriptions : sub.subscription_name => sub }
    enrollment_account_name = each.value.enrollment_account_name
    billing_account_name = each.value.billing_account_name
    subscription_name = each.value.subscription_name
    environment    = each.value.environment

    mandatory_tags = each.value.mandatory_tags

}