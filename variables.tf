variable "variables_lookup" {
  description = <<EOT
Map of variables_lookup, attributes below
Optional:
    - variable_set_id
    - workspace_id
EOT

  type = map(object({
    variable_set_id = optional(string)
    workspace_id    = optional(string)
  }))
}

