output "bucket_domain_name" {
  value = aws_s3_bucket.bucket-web.bucket_regional_domain_name
}

output "bucket-ultimo" {
  value = aws_s3_bucket.bucket-web.bucket_domain_name
}

output "bucket_id" {
  value       = local.enabled ? join("", aws_s3_bucket.bucket-web.*.id) : ""
  description = "Bucket Name"
}

locals {
  enabled = true # bool
}