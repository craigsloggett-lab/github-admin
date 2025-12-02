data "github_repository" "github_admin" {
  owner = "craigsloggett-lab"
  name  = "github-admin"
}

resource "github_repository" "tfe_patterns" {
  #  for_each = [
  #    "terraform-aws-tfe-data-object-storage",
  #    "terraform-aws-tfe-data-redis",
  #    "terraform-aws-tfe-data-postgres",
  #    "terraform-aws-tfe-network-vpc",
  #    "terraform-aws-tfe-dns-certificates",
  #    "terraform-aws-tfe-access-bastion",
  #    "terraform-aws-tfe-ec2-active-active",
  #    "terraform-aws-tfe-iam",
  #  ]
  for_each = toset(["testing"])

  name                        = each.key
  allow_auto_merge            = true
  allow_merge_commit          = true
  allow_rebase_merge          = true
  allow_squash_merge          = true
  auto_init                   = true
  delete_branch_on_merge      = true
  description                 = "This is a description."
  gitignore_template          = "Terraform"
  has_discussions             = false
  has_issues                  = true
  has_projects                = false
  has_wiki                    = false
  homepage                    = "https://github.com"
  is_template                 = false
  license_template            = "mpl-2.0"
  merge_commit_message        = "PR_BODY"
  merge_commit_title          = "PR_TITLE"
  private                     = false
  squash_merge_commit_message = "COMMIT_MESSAGES"
  squash_merge_commit_title   = "PR_TITLE"
}
