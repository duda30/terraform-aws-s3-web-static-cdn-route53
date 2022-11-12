data "aws_route53_zone" "zona-daredelabs" {
  name         = var.zone-name
  private_zone = false
}
