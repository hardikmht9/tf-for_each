module "hardik_module" {
  source      = "./Modules"
  name_policy = var.name_policy
  conditions  = var.conditions
  # destination   = var.destination
  # channel =       var.channel
  # workflows     = var.workflows 
}

module "new_module" {
  source = "./workflow"
  workflows =  var.workflows
  destination = var.destination
  channel = var.channel


}




