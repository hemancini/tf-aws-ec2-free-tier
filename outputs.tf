output "ec2_public_ip" {
  value       = module.ec2.public_ip
  description = "The public IP address of the EC2 instance"
}

output "ec2_instance_type" {
  value = module.ec2.instance_type
  description = "The instance type of the EC2 instance"
}