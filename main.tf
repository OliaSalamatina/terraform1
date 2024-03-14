
terraform {
  backend "remote" {
    hostname = "olias.main.scalr.dev"
    organization = "env-v0o9almqf8dj2kuqj"

    workspaces {
      name = "workspaceCLI"
    }
  }
}

provider "random" {
}

resource "random_integer" "example" {
  min = 1
  max = 100
}

output "random_number" {
  value = random_integer.example.result
}
