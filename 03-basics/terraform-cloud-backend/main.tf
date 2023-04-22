terraform {
  backend "remote" {
    organization = "devops-project"

    workspaces {
      name = "devops-project-terraform-course"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
