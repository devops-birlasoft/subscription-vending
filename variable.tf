

variable "subscriptions" {
  type = list(object({
    billing_account_name    = string
    enrollment_account_name = string
    subscription_name       = string
    mandatory_tags          = map(string)
    template                = string
  }))
}