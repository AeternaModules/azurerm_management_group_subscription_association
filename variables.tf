variable "management_group_subscription_associations" {
  description = <<EOT
Map of management_group_subscription_associations, attributes below
Required:
    - management_group_id
    - subscription_id
EOT

  type = map(object({
    management_group_id = string
    subscription_id     = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_management_group_subscription_association's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: management_group_id
  #   source:    [from validate.ManagementGroupID] !ok
  # path: management_group_id
  #   source:    [from validate.ManagementGroupID] err != nil
  # path: subscription_id
  #   source:    [from commonids.ValidateSubscriptionID] !ok
  # path: subscription_id
  #   source:    [from commonids.ValidateSubscriptionID] err != nil
}

