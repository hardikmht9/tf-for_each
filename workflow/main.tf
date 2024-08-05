
resource "newrelic_notification_destination" "alert_destination" {
  for_each = var.destination 
  account_id = each.value.account_id
  name       = each.value.notification_destination_name
  type       = each.value.notification_destination_type
 
  property {
    key   = each.value.key_destination        
    value = each.value.notification_email
  }
}
# output "destination"{
# value= newrelic_notification_destination.alert_destination.id

# }
 
resource "newrelic_notification_channel" "alert_channel" {
  for_each =   var.channel 
  account_id     = each.value.account_id
  name           = each.value.notification_channel_name
  type           = each.value.notification_channel_type
  destination_id = newrelic_notification_destination.alert_destination[each.key].id
  product        = each.value.product
 
  property {
    key   = each.value.key_property      
    value = each.value.notification_subject
  }
 
}
 
resource "newrelic_workflow" "workflows-test" {
  for_each = var.workflows
  name                 = each.value.name_test
  muting_rules_handling = each.value.muting_rules_handling
 
  issues_filter {
    name = each.value.filter_name
    type = each.value.filter    
 
    predicate {
      attribute = each.value.filter_attribute
      operator  = each.value.filter_operator
      values    = each.value.filter_values
    }
  }
 
  destination {
    channel_id = newrelic_notification_channel.alert_channel[each.key].id
  }
}