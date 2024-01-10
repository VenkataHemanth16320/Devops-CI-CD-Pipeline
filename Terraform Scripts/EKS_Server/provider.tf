terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" # Optional but recommended in production
    }
  }

  backend "s3" {
    bucket         = "project-register16320"
    key            = "eks-server/terraform.tfstate"
    region         = "us-east-1"

  }
}

provider "aws" {
  region = "us-east-1"
}
