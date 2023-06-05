variable "region" {
  description = "Region for AWS resources"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment for AWS resources"
  type        = string
  default     = "dev"
}

variable "ec2_ssh_key_name" {
  description = "The SSH Key Name"
  type        = string
  default     = "free-tier-ec2-key"
}

variable "ec2_ssh_public_key_path" {
  description = "The local path to the SSH Public Key"
  type        = string
  default     = "./provision/access/free-tier-ec2-key.pub"
}
