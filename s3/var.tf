variable "name" {
  default = null
}

variable "acl" {
  default = "public-read"
}

variable "suffix-index-html" {
  default = null
}

variable "error-html" {
  default = null
}

variable "bucket-object-name" {
  type    = list(string)
  default = null
}