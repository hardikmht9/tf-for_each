variable "name_policy" {
  type = string



}

variable "conditions" {
  type = map(object({
    type       = string
    account_id = number
    #   policy_id                      = number
    #   type                           = string
    name                           = string
    description                    = string
    runbook_url                    = string
    enabled                        = bool
    violation_time_limit_seconds   = number
    fill_option                    = string
    fill_value                     = number
    aggregation_window             = number
    aggregation_method             = string
    aggregation_delay              = number
    expiration_duration            = number
    open_violation_on_expiration   = string
    close_violations_on_expiration = string
    slide_by                       = number
    query                          = string
    operator                       = string
    threshold                      = number
    threshold_duration             = number
    threshold_occurrences          = string
    warning_operator               = string
    warning_threshold              = number
    warning_threshold_duration     = number
    warning_threshold_occurrences  = string
    }
  ))
}



variable "destination" {
  type = map(object({
    account_id                    = number
    notification_destination_name = string
    notification_destination_type = string
    key_destination               = string
    notification_email            = string
  }))
}
variable "channel" {
  type = map(object({
    account_id                    = number
    notification_channel_name     = string
    notification_channel_type     = string
    notification_destination_name = string
    product                       = string
    key_property                  = string
    notification_subject          = string
  }))
}

variable "workflows" {
  type = map(object({
    name_test                 = string
    muting_rules_handling     = string
    filter_name               = string
    filter                    = string
    filter_attribute          = string
    filter_operator           = string
    filter_values             = list(string)
    notification_channel_name = string
  }))
}

