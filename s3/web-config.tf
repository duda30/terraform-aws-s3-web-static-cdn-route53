resource "aws_s3_bucket_website_configuration" "bucket-web-config" {
  bucket = aws_s3_bucket.bucket-web.bucket

  index_document {
    suffix = var.suffix-index-html
  }

  error_document {
    key = var.error-html
  }
}


resource "aws_s3_object" "object-bucket" {
  bucket       = var.name
  key          = var.bucket-object-name[0]
  content_type = "text/html"
  source       = "./s3/${var.bucket-object-name[0]}"

  depends_on = [
    aws_s3_bucket.bucket-web
  ]
}


resource "aws_s3_object" "object2-bucket" {
  bucket       = var.name
  key          = var.bucket-object-name[1]
  content_type = "text/html"
  source       = "./s3/${var.bucket-object-name[1]}"

  depends_on = [
    aws_s3_bucket.bucket-web
  ]
}
# join("./s3/", var.bucket-object-name[1])