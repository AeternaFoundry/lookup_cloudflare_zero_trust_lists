output "zero_trust_lists_lookup_account_id" {
  description = "Map of account_id values across all zero_trust_lists_lookup, keyed the same as var.zero_trust_lists_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_zero_trust_lists.zero_trust_lists_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "zero_trust_lists_lookup_max_items" {
  description = "Map of max_items values across all zero_trust_lists_lookup, keyed the same as var.zero_trust_lists_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_zero_trust_lists.zero_trust_lists_lookup : k => v.max_items if v.max_items != null }
}
output "zero_trust_lists_lookup_result" {
  description = "Map of result values across all zero_trust_lists_lookup, keyed the same as var.zero_trust_lists_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_zero_trust_lists.zero_trust_lists_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "zero_trust_lists_lookup_type" {
  description = "Map of type values across all zero_trust_lists_lookup, keyed the same as var.zero_trust_lists_lookup except keys with no type are omitted"
  value       = { for k, v in data.cloudflare_zero_trust_lists.zero_trust_lists_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}

