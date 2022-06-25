terraform {
  required_version = "1.2.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.19.0"
    }
  }

  backend "s3" {
    bucket  = "tfstate-750497782054"
    key     = "dev/remote-bucket/terraform.tfstate"
    region  = "us-east-1"
    profile = "tf01"
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "tf01"
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "remote-state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  versioning {
    enabled = true
  }

  tags = {
    "Description" = "Stores terraform remote state files"
    "ManagedBy"   = "Terraform"
    "Year"        = "2022"
  }
}

output "remote_state_bucket" {
  value = aws_s3_bucket.remote-state.bucket
}

output "remote_state_bucket_arn" {
  value = aws_s3_bucket.remote-state.arn
}
