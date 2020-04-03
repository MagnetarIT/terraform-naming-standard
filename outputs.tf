output "id" {
  value       = local.enabled ? local.id : ""
  description = "Disambiguated ID"
}

output "name" {
  value       = local.enabled ? local.name : ""
  description = "Normalized name"
}

output "namespace" {
  value       = local.enabled ? local.namespace : ""
  description = "Normalized namespace"
}

output "environment" {
  value       = local.enabled ? local.environment : ""
  description = "Normalized environment"
}

output "attributes" {
  value       = local.enabled ? local.attributes : []
  description = "List of attributes"
}

output "delimiter" {
  value       = local.enabled ? local.delimiter : ""
  description = "Delimiter between `namespace`, `environment`, `name` and `attributes`"
}

output "tags" {
  value       = local.enabled ? local.tags : {}
  description = "Normalized Tag map"
}

output "tags_as_list_of_maps" {
  value       = local.tags_as_list_of_maps
  description = "Additional tags as a list of maps, which can be used in several AWS resources"
}

output "asg_tags_as_list_of_maps" {
  value       = local.asg_tags_as_list_of_maps
  description = "ASG tags as a list of maps with propagate_at_launch = true."
}

output "context" {
  value       = local.output_context
  description = "Context of this module to pass to other label modules"
}

output "label_order" {
  value       = local.label_order
  description = "The naming order of the id output and Name tag"
}

