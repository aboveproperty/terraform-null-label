module "label3n" {
  source              = "../../"
  name                = "Starfish"
  region              = "release"
  context             = module.label1.normalized_context
  delimiter           = "."
  regex_replace_chars = "/[^-a-zA-Z0-9.]/"

  tags = {
    "Eat"    = "Carrot"
    "Animal" = "Rabbit"
  }
}

output "label3n" {
  value = {
    id         = module.label3n.id
    name       = module.label3n.name
    affiliate  = module.label3n.affiliate
    region     = module.label3n.region
    attributes = module.label3n.attributes
    delimiter  = module.label3n.delimiter
  }
}

output "label3n_tags" {
  value = module.label3n.tags
}

output "label3n_context" {
  value = module.label3n.context
}

output "label3n_normalized_context" {
  value = module.label3n.normalized_context
}
