name_policy = "temppolicy"

conditions = {
  condition1 = {
account_id                     = 4438271
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

  }

   condition1 = {
account_id                     = 4438271
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

  }
   condition2 = {
account_id                     = 4438271
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

  }
   condition3 = {
account_id                     = 4438271
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

  }
   condition4 = {
account_id                     = 4438271
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

  }
}


