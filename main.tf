resource "azurerm_policy_set_definition" "policy_set_definitions" {
  for_each = var.policy_set_definitions

  display_name        = each.value.display_name
  name                = each.value.name
  policy_type         = each.value.policy_type
  description         = each.value.description
  management_group_id = each.value.management_group_id
  metadata            = each.value.metadata
  parameters          = each.value.parameters

  policy_definition_reference {
    parameter_values     = each.value.policy_definition_reference.parameter_values
    policy_definition_id = each.value.policy_definition_reference.policy_definition_id
    policy_group_names   = each.value.policy_definition_reference.policy_group_names
    reference_id         = each.value.policy_definition_reference.reference_id
    version              = each.value.policy_definition_reference.version
  }

  dynamic "policy_definition_group" {
    for_each = each.value.policy_definition_group != null ? [each.value.policy_definition_group] : []
    content {
      additional_metadata_resource_id = policy_definition_group.value.additional_metadata_resource_id
      category                        = policy_definition_group.value.category
      description                     = policy_definition_group.value.description
      display_name                    = policy_definition_group.value.display_name
      name                            = policy_definition_group.value.name
    }
  }
}

