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
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

