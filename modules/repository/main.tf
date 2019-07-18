resource "github_repository" "project_repository" {
  name        = "${var.repository_name}"
  description = "${var.project_slug} ACM Project for ${var.season} ${var.year}"

  auto_init          = true
  has_issues         = true
  has_projects       = true
  has_wiki           = true
  allow_merge_commit = true
  allow_squash_merge = false
  allow_rebase_merge = false
  private            = false
  license_template   = "gpl-3.0"
}

resource "github_branch_protection" "branch_protection" {
  repository     = "${github_repository.project_repository.name}"
  branch         = "master"
  enforce_admins = true

  required_status_checks {
    strict = true

    # TODO: Figure out what more status checks we can do
  }

  required_pull_request_reviews {
    required_approving_review_count = 1
    dismiss_stale_reviews           = true
  }

}
