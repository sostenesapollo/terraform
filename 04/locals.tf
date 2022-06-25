locals {
  common_tagss = {
    "Service"     = "Random Bucket Service"
    "ManagedBy"   = "Terraform"
    "Environment" = var.environment
    "Owner"       = "Sóstenes Apollo"
  }
  ip_filepath = "ips.json"
}
