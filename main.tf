resource "github_repository" "hashistack_aws_vpc" {
  name = "hashistack-aws-vpc"

  template_repository = "terraform-root-module-template"

  has_wiki     = false
  has_projects = false

  allow_merge_commit = false
  allow_rebase_merge = false

  delete_branch_on_merge = true
}