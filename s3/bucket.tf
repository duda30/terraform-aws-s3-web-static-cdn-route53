resource "aws_s3_bucket" "bucket-web" {
  bucket = var.name

  tags = {
    Name        = "Bucket-Web"
    Environment = "Testes-temporário"
  }
}

resource "aws_s3_bucket_policy" "bucket-policy" {
  bucket = aws_s3_bucket.bucket-web.id
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "PolicyForWebsiteEndpointsPublicContent",
  "Statement": [
    {
      "Sid": "PublicRead",
      "Effect": "Allow",
      "Principal": "*",
      "Action": [
        "s3:GetObject"
      ],
      "Resource": [
        "${aws_s3_bucket.bucket-web.arn}/*",
        "${aws_s3_bucket.bucket-web.arn}"
      ]
    }
  ]
}
POLICY
}

resource "aws_s3_bucket_acl" "bucket-acl" {
  bucket = aws_s3_bucket.bucket-web.id
  acl    = var.acl
}

