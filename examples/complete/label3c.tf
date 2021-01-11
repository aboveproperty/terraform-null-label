module "label3c" {
  source              = "../../"
  name                = "Starfish"
  region              = "release"
  context             = module.label1.context
  delimiter           = "."
  regex_replace_chars = "/[^-a-zA-Z0-9.]/"

  tags = {
    "Eat"    = "Carrot"
    "Animal" = "Rabbit"
  }
}

output "label3c" {
  value = {
    id         = module.label3c.id
    name       = module.label3c.name
    affiliate  = module.label3c.affiliate
    region     = module.label3c.region
    attributes = module.label3c.attributes
    delimiter  = module.label3c.delimiter
  }
}

output "label3c_tags" {
  value = module.label3c.tags
}

output "label3c_context" {
  value = module.label3c.context
}

output "label3c_normalized_context" {
  value = module.label3c.normalized_context
}
