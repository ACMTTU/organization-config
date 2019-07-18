# Add a team to the organization

resource "github_team" "partners" {
  name           = "${var.prefix}-partners"
  description    = "Partners for ${var.season} ${var.year}"
  privacy        = "closed"
  parent_team_id = "${github_team.project_contributors.id}"
}

resource "github_team" "project_contributors" {
  name        = "${var.prefix}-project-contributors"
  description = "Project Contributors for ${var.season} ${var.year}"
  privacy     = "closed"
}

resource "github_team" "project_managers" {
  name           = "${var.prefix}-pm"
  description    = "Project Managers for ${var.season} ${var.year}"
  privacy        = "closed"
  parent_team_id = "${github_team.project_contributors.id}"
}

resource "github_team" "principle_engineers" {
  name           = "${var.prefix}-principle"
  description    = "Principle Engineers for ${var.season} ${var.year}"
  privacy        = "closed"
  parent_team_id = "${github_team.project_contributors.id}"
}

resource "github_team" "senior_engineers" {
  name           = "${var.prefix}-senior"
  description    = "Senior Engineers for ${var.season} ${var.year}"
  privacy        = "closed"
  parent_team_id = "${github_team.project_contributors.id}"
}

resource "github_team" "sweii_engineers" {
  name           = "${var.prefix}-swe-ii"
  description    = "Software Engineer II for ${var.season} ${var.year}"
  privacy        = "closed"
  parent_team_id = "${github_team.project_contributors.id}"
}

resource "github_team" "swei_engineers" {
  name           = "${var.prefix}-swe-i"
  description    = "Software Engineer I for ${var.season} ${var.year}"
  privacy        = "closed"
  parent_team_id = "${github_team.project_contributors.id}"
}

resource "github_team_repository" "partners_perms" {
  team_id    = "${github_team.partners.id}"
  repository = "${var.repository_name}"
  permission = "pull"
}

resource "github_team_repository" "contributor_perms" {
  team_id    = "${github_team.project_contributors.id}"
  repository = "${var.repository_name}"
  permission = "pull"
}

resource "github_team_repository" "project_managers_perms" {
  team_id    = "${github_team.project_managers.id}"
  repository = "${var.repository_name}"
  permission = "pull"
}

resource "github_team_repository" "principle_engineers_perms" {
  team_id    = "${github_team.principle_engineers.id}"
  repository = "${var.repository_name}"
  permission = "admin"
}

resource "github_team_repository" "senior_engineers_perms" {
  team_id    = "${github_team.senior_engineers.id}"
  repository = "${var.repository_name}"
  permission = "admin"
}

resource "github_team_repository" "sweii_engineers_perms" {
  team_id    = "${github_team.sweii_engineers.id}"
  repository = "${var.repository_name}"
  permission = "push"
}

resource "github_team_repository" "swei_engineers_perms" {
  team_id    = "${github_team.swei_engineers.id}"
  repository = "${var.repository_name}"
  permission = "push"
}
