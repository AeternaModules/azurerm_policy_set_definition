output "policy_set_definitions_id" {
  description = "Map of id values across all policy_set_definitions, keyed the same as var.policy_set_definitions"
  value       = { for k, v in azurerm_policy_set_definition.policy_set_definitions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "policy_set_definitions_description" {
  description = "Map of description values across all policy_set_definitions, keyed the same as var.policy_set_definitions"
  value       = { for k, v in azurerm_policy_set_definition.policy_set_definitions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "policy_set_definitions_display_name" {
  description = "Map of display_name values across all policy_set_definitions, keyed the same as var.policy_set_definitions"
  value       = { for k, v in azurerm_policy_set_definition.policy_set_definitions : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "policy_set_definitions_management_group_id" {
  description = "Map of management_group_id values across all policy_set_definitions, keyed the same as var.policy_set_definitions"
  value       = { for k, v in azurerm_policy_set_definition.policy_set_definitions : k => v.management_group_id if v.management_group_id != null && length(v.management_group_id) > 0 }
}
output "policy_set_definitions_metadata" {
  description = "Map of metadata values across all policy_set_definitions, keyed the same as var.policy_set_definitions"
  value       = { for k, v in azurerm_policy_set_definition.policy_set_definitions : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "policy_set_definitions_name" {
  description = "Map of name values across all policy_set_definitions, keyed the same as var.policy_set_definitions"
  value       = { for k, v in azurerm_policy_set_definition.policy_set_definitions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "policy_set_definitions_parameters" {
  description = "Map of parameters values across all policy_set_definitions, keyed the same as var.policy_set_definitions"
  value       = { for k, v in azurerm_policy_set_definition.policy_set_definitions : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "policy_set_definitions_policy_definition_group" {
  description = "Map of policy_definition_group values across all policy_set_definitions, keyed the same as var.policy_set_definitions"
  value       = { for k, v in azurerm_policy_set_definition.policy_set_definitions : k => v.policy_definition_group if v.policy_definition_group != null && length(v.policy_definition_group) > 0 }
}
output "policy_set_definitions_policy_definition_reference" {
  description = "Map of policy_definition_reference values across all policy_set_definitions, keyed the same as var.policy_set_definitions"
  value       = { for k, v in azurerm_policy_set_definition.policy_set_definitions : k => v.policy_definition_reference if v.policy_definition_reference != null && length(v.policy_definition_reference) > 0 }
}
output "policy_set_definitions_policy_type" {
  description = "Map of policy_type values across all policy_set_definitions, keyed the same as var.policy_set_definitions"
  value       = { for k, v in azurerm_policy_set_definition.policy_set_definitions : k => v.policy_type if v.policy_type != null && length(v.policy_type) > 0 }
}

