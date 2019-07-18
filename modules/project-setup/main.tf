resource "github_organization_project" "project" {
  name = "${var.project_slug} Project Setup - ${var.season} ${var.year}"
}

resource "github_project_column" "infrastructure" {
  project_id = "${github_organization_project.project.id}"
  name       = "Infrastructure"
}

resource "github_project_column" "ideas" {
  project_id = "${github_organization_project.project.id}"
  name       = "Ideas"
}

resource "github_project_column" "done" {
  project_id = "${github_organization_project.project.id}"
  name       = "Done"
}
