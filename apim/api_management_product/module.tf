resource "azurerm_api_management_product" "apim" {
  api_management_name   = var.api_management_name
  resource_group_name   = var.resource_group_name
  display_name          = var.settings.display_name
  product_id            = var.settings.product_id
  description           = try(var.settings.description, null)
  approval_required     = try(var.settings.approval_required, null)
  subscription_required = try(var.settings.subscription_required, null)
  published             = try(var.settings.published, null)
  subscriptions_limit   = try(var.settings.subscriptions_limit, null)
  terms                 = try(var.settings.terms, null)
}