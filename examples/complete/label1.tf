module "label1" {
  source      = "../../"
  affiliate   = "abvprp"
  environment = "UAT"
  region      = "us-east-1"
  name        = "poseidon"
  attributes  = ["fire", "water", "earth", "air"]
  delimiter   = "-"

  label_order = ["affiliate", "environment", "region", "name"]

  tags = {
    "City"        = "Dublin"
    "Environment" = "Private"
  }
}

output "label1" {
  value = {
    id         = module.label1.id
    name       = module.label1.name
    affiliate  = module.label1.affiliate
    region     = module.label1.region
    attributes = module.label1.attributes
    delimiter  = module.label1.delimiter
  }
}

output "label1_tags" {
  value = module.label1.tags
}

output "label1_context" {
  value = module.label1.context
}

output "label1_normalized_context" {
  value = module.label1.normalized_context
}



