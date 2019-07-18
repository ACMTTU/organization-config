variable "github_token" {
  description = "Token used for authenticating with GitHub. Must contact owner or organization."
}

variable "repository_name" {
  type        = string
  description = "Respository to create for the project"
}

variable "year" {
  type        = string
  description = "Current year"
}

variable "season" {
  type        = string
  description = "Current season (spring/fall)"
}

variable "project_slug" {
  type        = string
  description = "Friendly project name"
}

