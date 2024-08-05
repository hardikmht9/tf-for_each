resource "newrelic_alert_policy" "policyNN" {
  name = var.name_policy
}

resource "newrelic_nrql_alert_condition" "conditions" {
  policy_id                      = newrelic_alert_policy.policyNN.id
  for_each                       = var.conditions
  account_id                     = each.value.account_id
  # policy_id                      = newrelic_alert_policy.policyNN.id
  type                           = each.value.type
  name                           = each.value.name
  description                    = each.value.description
  runbook_url                    = each.value.runbook_url
  enabled                        = each.value.enabled
  violation_time_limit_seconds   = each.value.violation_time_limit_seconds
  fill_option                    = each.value.fill_option
  fill_value                     = each.value.fill_value
  aggregation_window             = each.value.aggregation_window
  aggregation_method             = each.value.aggregation_method
  aggregation_delay              = each.value.aggregation_delay
  expiration_duration            = each.value.expiration_duration
  open_violation_on_expiration   = each.value.open_violation_on_expiration
  close_violations_on_expiration = each.value.close_violations_on_expiration
  slide_by                       = each.value.slide_by
  

  nrql {
    query = each.value.query
  }

  dynamic "critical" {
    for_each              = each.value.operator != null? [each.value]: []
    content {
    operator              = each.value.operator
    threshold             = each.value.threshold
    threshold_duration    = each.value.threshold_duration
    threshold_occurrences = each.value.threshold_occurrences
    }
    
  }

  dynamic "warning" {
    for_each              = each.value.warning_operator != null? [each.value]: []
    content {
    operator              = each.value.warning_operator
    threshold             = each.value.warning_threshold
    threshold_duration    = each.value.warning_threshold_duration
    threshold_occurrences = each.value.warning_threshold_occurrences
    }
    
  }
}


