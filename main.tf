module "route53" {
  source = "./route-53"

  cdn-domain-name    = module.cdn.domain_name_cdn
  cdn-hosted-zone-id = module.cdn.hosted_zone_id
  zone-name          = "daredelabs.com.br"
}

module "cdn" {
  source = "./cdn"

  bucket-domain-name         = module.s3.bucket_domain_name
  bucket-oringin-id          = module.s3.bucket_id
  restri-type                = "whitelist"
  website_domain_name        = "maria-desafio-2-sust.daredelabs.com.br"
  acm_certificate_arn_to_use = "arn:aws:acm:us-east-1:613036180535:certificate/c7e935a2-2c35-4354-9c24-2b1fd4eea335"
  locations                  = ["BR"]
}

module "s3" {
  source = "./s3"

  name               = "bucket-web13244257656"
  suffix-index-html  = "index.html"
  error-html         = "error.html"
  bucket-object-name = ["index.html", "error.html"]
  acl                = "public-read"
}