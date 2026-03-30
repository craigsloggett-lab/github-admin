resource "github_repository" "hashistack_aws_vpc" {
  name        = "hashistack-aws-vpc"
  description = "An infrastructure as code repository to manage the VPC used in my HashiStack lab."
  homepage    = "https://app.terraform.io/app/craigsloggett-lab/workspaces/hashistack-aws-vpc"

  template_repository = "terraform-root-module-template"

  has_wiki     = false
  has_projects = false

  allow_merge_commit = false
  allow_rebase_merge = false

  delete_branch_on_merge = true
  allow_update_branch    = true

  topics = ["terraform"]
}

resource "github_repository" "pingfederate_artifacts" {
  name        = "pingfederate-artifacts"
  description = "An infrastructure as code repository to manage the S3 bucket for PingFederate distribution artifacts."
  homepage    = "https://app.terraform.io/app/craigsloggett-lab/workspaces/pingfederate-artifacts"

  template_repository = "terraform-root-module-template"

  has_wiki     = false
  has_projects = false

  allow_merge_commit = false
  allow_rebase_merge = false

  delete_branch_on_merge = true
  allow_update_branch    = true

  topics = ["terraform"]
}
