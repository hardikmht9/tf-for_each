name_policy = "temppolicy4"

conditions = {
  condition1 = {
    account_id = 4438271
    # policy_id                      = newrelic_alert_policy.policyNN.id
    type                           = "static"
    name                           = "newcondition"
    description                    = "Alert when transactions are taking too long"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    query                          = "SELECT average(largestContentfulPaint) FROM PageViewTiming WHERE appName = 'react-cart' "
    operator                       = "above"
    threshold                      = 5.5
    threshold_duration             = 300
    threshold_occurrences          = "ALL"
    warning_operator               = "Above"
    warning_threshold              = 3.5
    warning_threshold_duration     = 600
    warning_threshold_occurrences  = "All"
  }

  condition2 = {
    account_id = 4438271
    # policy_id                      = newrelic_alert_policy.policyNN.id
    type                           = "static"
    name                           = "newcondition1"
    description                    = "Alert when transactions are taking too long"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    query                          = "SELECT percentile(cumulativeLayoutShift ) FROM PageViewTiming WHERE appName = 'react-cart'"
    operator                       = "above"
    threshold                      = 6
    threshold_duration             = 299
    threshold_occurrences          = "ALL"
    warning_operator               = "Above"
    warning_threshold              = 3.5
    warning_threshold_duration     = 600
    warning_threshold_occurrences  = "All"

  }
  condition2 = {
    account_id = 4438271
    # policy_id                      = newrelic_alert_policy.policyNN.id
    type                           = "static"
    name                           = "newcondition2"
    description                    = "Alert when transactions are taking too long"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    query                          = "SELECT average(duration) FROM Transaction where appName = 'mmt-blog'"
    operator                       = "above"
    threshold                      = 5.5
    threshold_duration             = 300
    threshold_occurrences          = "ALL"
    warning_operator               = "Above"
    warning_threshold              = 3.5
    warning_threshold_duration     = 600
    warning_threshold_occurrences  = "All"
  }
  condition3 = {
    account_id = 4438271
    # policy_id                      = newrelic_alert_policy.policyNN.id
    type                           = "static"
    name                           = "newcondition3"
    description                    = "Alert when transactions are taking too long"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    query                          = "SELECT average(domProcessingDuration ) AS 'Dom processing'FROM PageView WHERE appName = 'react-cart'"
    operator                       = null
    threshold                      = null
    threshold_duration             = null
    threshold_occurrences          = null
    warning_operator               = "Above"
    warning_threshold              = 3.5
    warning_threshold_duration     = 600
    warning_threshold_occurrences  = "All"



  }
  condition4 = {
    account_id = 4438271
    # policy_id                      = newrelic_alert_policy.policyNN.id
    type                           = "static"
    name                           = "newcondition4"
    description                    = "Alert when transactions are taking too long"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    query                          = "SELECT percentile(cumulativeLayoutShift ) FROM PageViewTiming WHERE appName = 'react-cart'"
    operator                       = "above"
    threshold                      = 5.5
    threshold_duration             = 300
    threshold_occurrences          = "ALL"
    //warning_operator = null
    warning_operator               = null
    warning_threshold              = null
    warning_threshold_duration     = null
    warning_threshold_occurrences  = null
  }
}

destination = {
  "test"={
  account_id                    = 4438271
  notification_destination_name = "browser-alert-destination"
  notification_destination_type = "EMAIL"
  key_destination               = "email"
  notification_email            = "hardikmehta99999@gmail.com"
}}

channel = {
  "test"={
  account_id                    = 4438271
  notification_channel_name     = "browser-alert-channel"
  notification_channel_type     = "EMAIL"
  notification_destination_name = "browser-alert-destination"
  product                       = "IINT"


  key_property                  = "subject"
  notification_subject          = "BrowserAlert"
  # notification_custom_details   = "details about the alert"

}
}
workflows = { 
  "test"={
  name_test                     = "Alert Workflow"
  muting_rules_handling     = "NOTIFY_ALL_ISSUES"
  filter_name               = " Filter-name"
  filter                    = "FILTER"
  filter_attribute          = "priority"
  filter_operator           = "EXACTLY_MATCHES"
  filter_values             = ["growth"]
  notification_channel_name = "browser-alert-channel"

  # }
  # # "test-2"={
  # name_test                     = "Alert Workflow"
  # muting_rules_handling     = "NOTIFY_ALL_ISSUES"
  # filter_name               = " Filter-name"
  # filter                    = "FILTER"
  # filter_attribute          = "priority"
  # filter_operator           = "EXACTLY_MATCHES"
  # filter_values             = ["growth"]
  # notification_channel_name = "browser-alert-channel"

  # # }

}
}


