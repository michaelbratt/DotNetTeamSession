variable "env_name" {
  description = "The name of the environment"
  type        = string
}

variable "repo_url" {
  description = "The url of the repo"
  type        = string
}

variable "branch" {
  description = "The branch of the repo"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "service_plan_id" {
  description = "The id of the service plan"
  type        = string
}

variable "app_name" {
  description = "The name of the app"
  type        = string
}

variable "username" {
  description = "The username of the user"
  type        = string
}
