output "ELB" {
  value = aws_alb.my-alb.dns_name
}
output "cert" {
  value = aws_acm_certificate.mycert.id
}
