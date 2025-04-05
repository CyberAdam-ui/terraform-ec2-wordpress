variable "aws_region" {
  description = "AWS region"
  default     = "eu-west-2"
}

variable "ami_id" {
  description = "Bitnami WordPress AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID to associate with the instance"
  type        = string
}

variable "key_name" {
  description = "Name of the AWS key pair to use for SSH access"
  type        = string
}
