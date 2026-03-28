resource "github_repository" "hashistack_aws_vpc" {
  name        = "hashistack-aws-vpc"
  description = "An infrastructure as code repository to manage the VPC used in my HashiStack lab."

  template_repository = "terraform-root-module-template"

  has_wiki     = false
  has_projects = false

  allow_merge_commit = false
  allow_rebase_merge = false

  delete_branch_on_merge = true
  allow_update_branch    = true

  topics = ["terraform"]
}