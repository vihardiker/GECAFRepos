module "diagnostics" {
  source = "../../../diagnostics"

  resource_id       = azurerm_batch_account.account.id
  resource_location = var.location
  diagnostics       = var.diagnostics
  profiles          = try(var.settings.diagnostic_profiles, {})
}
