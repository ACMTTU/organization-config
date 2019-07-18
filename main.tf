terraform {
  required_version = ">= 0.12"
}

provider "github" {
  token        = var.github_token
  organization = "ACMTTU"
  version      = "~> 2.2"
}

module "project-setup" {
  source = "./modules/project-setup"

  year         = var.year
  season       = var.season
  project_slug = var.project_slug
}


module "teams" {
  source = "./modules/teams"

  repository_name = var.repository_name
  year            = var.year
  season          = var.season
  project_slug    = var.project_slug
  prefix          = "${var.year}${var.season}-${var.repository_name}"
}

module "repository" {
  source = "./modules/repository"

  repository_name = var.repository_name
  year            = var.year
  season          = var.season
  project_slug    = var.project_slug
}

