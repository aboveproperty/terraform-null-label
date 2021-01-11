module "label4" {
  source      = "../../"
  affiliate   = "CloudPosse"
  environment = "UAT"
  name        = "Example Cluster"
  attributes  = ["big", "fat", "honking", "cluster"]
  delimiter   = "-"

  label_order = ["affiliate", "region", "environment", "attributes"]

  tags = {
    "City"        = "Dublin"
    "Environment" = "Private"
  }
}

output "label4" {
  value = {
    id         = module.label4.id
    name       = module.label4.name
    affiliate  = module.label4.affiliate
    region     = module.label4.region
    attributes = module.label4.attributes
    delimiter  = module.label4.delimiter
  }
}

output "label4_tags" {
  value = module.label4.tags
}

output "label4_context" {
  value = module.label4.context
}
