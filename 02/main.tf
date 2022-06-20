terraform {
  required_version = "1.2.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.19.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "tf01"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-19283718937128932"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
    Owner       = "Sóstenes Apollo"
    UpdatedAt   = "20/06/2022"
  }
}
