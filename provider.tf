terraform {
  # cloud {
  #   organization = "samuellee-dev"
  #   workspaces {
  #     project = "AWS"
  #     name = "aws-network-architecture-test"
  #   }
  # }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.46.0"
    }
  }
}

provider "aws" {
  region = var.region
}
