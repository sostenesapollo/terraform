terraform {
  required_version = "1.2.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.19.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
