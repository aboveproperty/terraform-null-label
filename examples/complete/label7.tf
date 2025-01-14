module "label7a" {
  source      = "../../"
  enabled     = true
  affiliate   = "eg"
  environment = "demo"
  name        = "blue"
  attributes  = ["cluster"]
  delimiter   = "-"

  tags = {
  }
}

module "label7" {
  source = "../../"

  attributes = ["nodegroup"]

  context = module.label7a.context
}


output "label7" {
  value = {
    id         = module.label7.id
    name       = module.label7.name
    affiliate  = module.label7.affiliate
    region     = module.label7.region
    attributes = module.label7.attributes
    delimiter  = module.label7.delimiter
  }
}

output "label7_id" {
  value = module.label7.id
}

output "label7_attributes" {
  value = module.label7.attributes
}

output "label7_context" {
  value = module.label7.context
}
