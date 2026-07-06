output "management_group_subscription_associations" {
  description = "All management_group_subscription_association resources"
  value       = azurerm_management_group_subscription_association.management_group_subscription_associations
}
output "management_group_subscription_associations_management_group_id" {
  description = "List of management_group_id values across all management_group_subscription_associations"
  value       = [for k, v in azurerm_management_group_subscription_association.management_group_subscription_associations : v.management_group_id]
}
output "management_group_subscription_associations_subscription_id" {
  description = "List of subscription_id values across all management_group_subscription_associations"
  value       = [for k, v in azurerm_management_group_subscription_association.management_group_subscription_associations : v.subscription_id]
}

