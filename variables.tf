variable "zero_trust_lists_lookup" {
  description = <<EOT
Map of zero_trust_lists_lookup, attributes below
Optional:
    - account_id
    - max_items
    - type
EOT

  type = map(object({
    account_id = optional(string)
    max_items  = optional(number)
    type       = optional(string)
  }))
}

