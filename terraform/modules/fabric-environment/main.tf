resource "fabric_workspace" "this" {
  display_name = "[HANDS-ON] ${var.trigram} Workspace - ${var.environment}"
  description  = "Fabric workspace for the Introduction to DataOps learning path."
  capacity_id  = var.capacity_id

  identity = {
    type = "SystemAssigned"
  }
}

resource "fabric_lakehouse" "this" {
  display_name = "lkh_${lower(var.environment)}_hands_on"
  workspace_id = fabric_workspace.this.id
  description  = "Fabric lakehouse for the Introduction to DataOps learning path."

  configuration = {
    enable_schemas = true
  }
}

resource "fabric_workspace_role_assignment" "this" {
  workspace_id = fabric_workspace.this.id

  principal = {
    id   = var.principal_id
    type = "Group"
  }

  role = "Contributor"
}