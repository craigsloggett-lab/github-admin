resource "github_repository" "hashistack_aws_vpc" {
  name = "hashistack-aws-vpc"

  template_repository = "terraform-root-module-template"
}