terraform {
  backend "s3" {
    region  = "us-east-1"
    bucket  = "free-tier-ec2-terraform-state"
    key     = "terraform.tfstate"
    encrypt = true
  }
}
