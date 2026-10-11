data "cloudflare_zero_trust_lists" "zero_trust_lists_lookup" {
  for_each = var.zero_trust_lists_lookup

  account_id = each.value.account_id
  max_items  = each.value.max_items
  type       = each.value.type
}

