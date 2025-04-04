# WordPress EC2 Instance (Terraform)

This Terraform configuration recreates an EC2 instance previously launched manually through the AWS Console using the Bitnami WordPress AMI. It deploys a publicly accessible instance in the `eu-west-2` region, inside a specified subnet and security group.

## Project Context

This project treats the Terraform setup as part of a production-like structure, with separate files for providers, variables, and outputs, in accordance with team-based and scalable infrastructure-as-code best practices.

## Resources Created

- EC2 instance (t2.micro)
- AMI: Bitnami WordPress
- Public IP
- Tags for project and owner identification

## Usage

```bash
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
```
