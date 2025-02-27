variable "app_name" {
  description = "The name of the app"
  type        = string
}

variable "env_name" {
  description = "The name of the environment"
  type        = string
}

variable "os_type" {
  description = "The os type of the environment"
  type        = string
}

variable "sku_name" {
  description = "The sku name of the environment"
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