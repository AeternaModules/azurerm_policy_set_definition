variable "policy_set_definitions" {
  description = <<EOT
Map of policy_set_definitions, attributes below
Required:
    - display_name
    - name
    - policy_type
    - policy_definition_reference (block):
        - parameter_values (optional)
        - policy_definition_id (required)
        - policy_group_names (optional)
        - reference_id (optional)
        - version (optional)
Optional:
    - description
    - management_group_id
    - metadata
    - parameters
    - policy_definition_group (block):
        - additional_metadata_resource_id (optional)
        - category (optional)
        - description (optional)
        - display_name (optional)
        - name (required)
EOT

  type = map(object({
    display_name        = string
    name                = string
    policy_type         = string
    description         = optional(string)
    management_group_id = optional(string)
    metadata            = optional(string)
    parameters          = optional(string)
    policy_definition_reference = object({
      parameter_values     = optional(string)
      policy_definition_id = string
      policy_group_names   = optional(set(string))
      reference_id         = optional(string)
      version              = optional(string)
    })
    policy_definition_group = optional(object({
      additional_metadata_resource_id = optional(string)
      category                        = optional(string)
      description                     = optional(string)
      display_name                    = optional(string)
      name                            = string
    }))
  }))
}

