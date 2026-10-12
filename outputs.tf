output "variables_lookup_id" {
  description = "Map of id values across all variables_lookup, keyed the same as var.variables_lookup except keys with no id are omitted"
  value       = { for k, v in data.tfe_variables.variables_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "variables_lookup_env" {
  description = "Map of env values across all variables_lookup, keyed the same as var.variables_lookup except keys with no env are omitted"
  value       = { for k, v in data.tfe_variables.variables_lookup : k => v.env if v.env != null && length(v.env) > 0 }
}
output "variables_lookup_terraform" {
  description = "Map of terraform values across all variables_lookup, keyed the same as var.variables_lookup except keys with no terraform are omitted"
  value       = { for k, v in data.tfe_variables.variables_lookup : k => v.terraform if v.terraform != null && length(v.terraform) > 0 }
}
output "variables_lookup_variable_set_id" {
  description = "Map of variable_set_id values across all variables_lookup, keyed the same as var.variables_lookup except keys with no variable_set_id are omitted"
  value       = { for k, v in data.tfe_variables.variables_lookup : k => v.variable_set_id if v.variable_set_id != null && length(v.variable_set_id) > 0 }
}
output "variables_lookup_variables" {
  description = "Map of variables values across all variables_lookup, keyed the same as var.variables_lookup except keys with no variables are omitted"
  value       = { for k, v in data.tfe_variables.variables_lookup : k => v.variables if v.variables != null && length(v.variables) > 0 }
}
output "variables_lookup_workspace_id" {
  description = "Map of workspace_id values across all variables_lookup, keyed the same as var.variables_lookup except keys with no workspace_id are omitted"
  value       = { for k, v in data.tfe_variables.variables_lookup : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

