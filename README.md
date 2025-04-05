# # Terraform EC2 WordPress Deployment

This project uses Terraform to deploy a Bitnami WordPress EC2 instance in AWS. It follows a modular layout with provider version locking.

## Project Structure

- `main.tf` – Defines the EC2 instance and associated resources
- `variables.tf` – Input variables for instance type, AMI ID, and key pair
- `providers.tf` – AWS provider configuration (`eu-west-2`)
- `outputs.tf` – Exposes public IP and instance metadata
- `terraform.lock.hcl` – Provider version locking
- `.gitignore` – Excludes generated files
- `README.md` – Project documentation

## Deployed Resource

- Terraform resource: `aws_instance.wordpress`
- Region: `eu-west-2`
- AMI: Bitnami WordPress (pre-configured)
- Instance type: `t2.micro`
- SSH: Enabled (key pair required)

## SSH and WordPress Admin Access

The instance was accessed using PuTTY:

1. Private key converted to `.ppk` using PuTTYgen
2. SSH login via public IP as `bitnami`
3. Admin password retrieved via:

```bash
cat_bitnami_credentials
```

WordPress admin accessed at:

```
http://<public-ip>/wp-admin
```

## Usage

```bash
terraform init
terraform plan -var="ami_id=ami-xxxxxxxx" -var="key_name=my-key"
terraform apply -var="ami_id=ami-xxxxxxxx" -var="key_name=my-key"
```
