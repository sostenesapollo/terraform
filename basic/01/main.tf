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
  bucket = "my-bucket-00000000001"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}
