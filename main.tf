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
  }
}
