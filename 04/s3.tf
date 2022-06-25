resource "aws_s3_bucket" "this" {
  bucket = "${var.environment}-${random_pet.bucket.id}"
  tags   = local.common_tagss
}

resource "aws_s3_object" "this" {
  bucket = aws_s3_bucket.this.bucket
  # Internally in bucket
  key = "config/${local.ip_filepath}"
  # Local file
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = "application/json"
}
