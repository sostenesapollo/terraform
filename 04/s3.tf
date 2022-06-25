resource "aws_s3_bucket" "this" {
  bucket = "${var.environment}-${random_pet.bucket.id}"

  tags = {
    "Service"     = "Random Bucket Service"
    "ManagedBy"   = "Terraform"
    "Environment" = var.environment
    "Owner"       = "Sóstenes Apollo"
  }
}

