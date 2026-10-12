data "tfe_variables" "variables_lookup" {
  for_each = var.variables_lookup

  variable_set_id = each.value.variable_set_id
  workspace_id    = each.value.workspace_id
}

