variable "bucket-domain-name" {
  default = null
}

variable "bucket-oringin-id" {
  default = null
}

variable "restri-type" {
  default = "whitelist"
}

variable "website_domain_name" {
  default = null
}

variable "acm_certificate_arn_to_use" {
  description = "ACM Certificate ARN to use in case you disable automatic certificate creation. Certificate must be in us-east-1 region."
  type        = string
  default     = null
}

variable "locations" {
  type    = list(string)
  default = "BR"
}