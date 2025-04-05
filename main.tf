resource "aws_instance" "wordpress" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  key_name                    = var.key_name
  associate_public_ip_address = true

  tags = {
    Name    = "WordPress EC2"
    Project = "Terraform EC2 Instance"
    Owner   = "Adam Bashford"
  }
}
