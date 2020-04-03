# only use one per resource
module "simple" {
    source = "../"
    namespace           = "mag"
    environment         = "prod"
    name                = "myapp"
    attributes          = ["1"]
}


output "tags_as_list_of_maps" {
  value = module.simple.tags_as_list_of_maps
}

output "tags" {
  value = module.simple.tags
}

output "id" {
  value = module.simple.id
}
