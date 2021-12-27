output "frontdoor_waf_policy" {
  value = azurerm_frontdoor_firewall_policy.default
}

output "frontdoor_waf_policy_map" {
  value = {
    for waf in azurerm_frontdoor_firewall_policy.default : waf.name => waf.id
  }
}
output "id" {
  value       = azurerm_frontdoor_custom_https_configuration.custom.id
  description = "The ID of the Azure Front Door Custom Https Configuration."
}
output "custom_https_configuration" {
  value       = azurerm_frontdoor_custom_https_configuration.custom.custom_https_configuration
  description = "A `custom_https_configuration` block as defined below."
}