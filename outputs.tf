output "instance_public_ip" {
  value       = aws_instance.wordpress.public_ip
  description = "Public IP address of the WordPress EC2 instance"
}
