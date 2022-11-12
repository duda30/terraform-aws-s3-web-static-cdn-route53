output "dist_cdn" {
  value = aws_cloudfront_distribution.s3_distribution.id
}

output "domain_name_cdn" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}

output "hosted_zone_id" {
  value = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
}