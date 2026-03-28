terraform {
  cloud {
    organization = "craigsloggett-lab"

    workspaces {
      project = "Administration"
      name    = "github-admin"
    }
  }
}
