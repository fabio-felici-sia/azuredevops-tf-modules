variable "project_id" {
  type        = string
  description = "(Required) Azure DevOps project ID"
}

variable "repository" {
  type = object({
    organization    = string
    name            = string
    branch_name     = string
    pipelines_path  = string
    yml_prefix_name = string
  })
  description = "(Required) GitHub repository attributes"
}

# todo not works
# variable "ci_trigger" {
#   type = object({
#     branch_filter = object({
#       exclude = list(string)
#       include = list(string)
#     })
#     path_filter = object({
#       exclude = list(string)
#       include = list(string)
#     })
#   })
#   description = "(Optional) CI trigger policy"
#   default     = null
# }

variable "github_service_connection_id" {
  type        = string
  description = "(Required) GitHub service connection ID used to link Azure DevOps."
}

variable "variables" {
  type        = map(any)
  default     = null
  description = "(Optional) Pipeline variables"
}

variable "variables_secret" {
  type        = map(any)
  default     = null
  description = "(Optional) Pipeline secret variables"
}

variable "service_connection_ids_authorization" {
  type        = list(string)
  default     = null
  description = "(Optional) List service connection IDs that pipeline needs authorization. github_service_connection_id is authorized by default"
}