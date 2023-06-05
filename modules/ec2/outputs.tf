output "ec2_id" {
  description = "The ID of the EC2"
  value       = concat(aws_instance.ec2.*.id, [""])[0]
}

output "ec2_arn" {
  description = "The ARN of the EC2"
  value       = concat(aws_instance.ec2.*.arn, [""])[0]
}

output "instance_type" {
  description = "The instance type of the EC2"
  value       = concat(aws_instance.ec2.*.instance_type, [""])[0]
}

output "public_ip" {
  description = "The public IP address of the EC2"
  value       = concat(aws_instance.ec2.*.public_ip, [""])[0]
}
