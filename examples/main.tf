 module "simple" {
    source     = "git::https://github.com/MagnetarIT/terraform-naming-standard.git?ref=tags/0.1.0"
    namespace  = "mag"
    name       = "app"
    attributes = ["test"]
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