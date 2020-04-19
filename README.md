# Terraform-Demo

commads to run after git clone

1. Terraform init
2. Terraform plan
3. Terraform apply

Check your aws console , and validate of all reqd. resources are configured correctly.

What this module does for us in AWS:

This module creates autoscaling group with launch configuration which spins up 2 EC2 instances at max , install NGINX and performs required config. mentioned in autoscaling tf file inside userdata section.
Even if you remove one instance , autoscaling will ensure it keeps 2 instances up and running allt he time.
It will then created ALB and reqd set of rules with conditions.

In order to import Public ACM certificate in terraform from any infra, use this command and then with terraform script , you can associate the same to ALB to hit the website on HTTPS.

terraform import aws_acm_certificate.cert arn:aws:acm:eu-west-1:288053372299:certificate/5dfebca7-8833-4b0e-b8e1-ff6e3245df21


