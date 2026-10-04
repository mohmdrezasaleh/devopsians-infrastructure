module "storage" {
  source  = "195.24.237.134/devops/terraform-minio-s3-module/s3"
  version = "1.0.0"

  bucket_names = [
    "k3s-backups",
    "app-assets",
    "tfstate"
  ]

  lifecycle_days = 7

  lifecycle_buckets = [
    "k3s-backups"
  ]
}
