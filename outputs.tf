output "management_group_subscription_associations_id" {
  description = "Map of id values across all management_group_subscription_associations, keyed the same as var.management_group_subscription_associations"
  value       = { for k, v in azurerm_management_group_subscription_association.management_group_subscription_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "management_group_subscription_associations_management_group_id" {
  description = "Map of management_group_id values across all management_group_subscription_associations, keyed the same as var.management_group_subscription_associations"
  value       = { for k, v in azurerm_management_group_subscription_association.management_group_subscription_associations : k => v.management_group_id if v.management_group_id != null && length(v.management_group_id) > 0 }
}
output "management_group_subscription_associations_subscription_id" {
  description = "Map of subscription_id values across all management_group_subscription_associations, keyed the same as var.management_group_subscription_associations"
  value       = { for k, v in azurerm_management_group_subscription_association.management_group_subscription_associations : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
}

