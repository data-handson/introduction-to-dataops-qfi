variable "environment" {
  description = "Environment name (e.g. DEV, PRD)"
  type        = string
}

variable "trigram" {
  description = "Your personal trigram for resource naming"
  type        = string
}

variable "capacity_id" {
  description = "Microsoft Fabric capacity ID"
  type        = string
}

variable "principal_id" {
  description = "AAD group ID for workspace role assignment"
  type        = string
}