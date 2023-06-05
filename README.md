# Terraform - AWS EC2 Free Tier

> Getting started with the Terraform for managing a base free-tier AWS resources.

### Project description

This is a [Terraform](https://www.terraform.io/) project for managing AWS resources.

It can build the next infrastructure:

- [VPC](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
- Public [Subnet](https://docs.aws.amazon.com/vpc/latest/userguide/working-with-vpcs.html#AddaSubnet) in the `VPC`
- [IGW](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html) to enable access to or from the Internet for `VPC`
- [Route Table](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) to associate `IGW`, `VPC` and `Subnet`
- [EC2 Instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html) in the public `Subnet` with the HTTP(s) & SSH access

### Pre steps

1. [Install Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html)
2. Create AWS account
3. If the file `~/.aws/credentials` does't exist, create it and add you Terraform profile to the file. For example:
   ```ini
   [free-tier-ec2]
   aws_access_key_id = Your access key
   aws_secret_access_key = Your secret access key
   ```
4. Create S3 bucket to store Terraform state, for example: `free-tier-ec2-terraform-state` and configure it in the `backend.tf.tf` file
5. Create SSH key pair to connect to EC2 instance:

   ```bash
   cd ./provision/access

   # it creates "free-tier-ec2-key" private key and "free-tier-ec2-key.pub" public key
   ssh-keygen -f free-tier-ec2-key
   ```

### Build infrastructure

1. `terraform init`
2. `terraform plan`
3. `terraform apply`

### Post steps

After building the infrastructure you can try to connect to you `EC2 instance` via SSH:

1. `ssh -i ./provision/access/free-tier-ec2-key ubuntu@<EC2_PUBLIC_IP>`

To check HTTP access you can install `apache2` on your EC2 instance:

1. `sudo apt update && sudo apt install apache2` (on EC2 machine)
2. `sudo service apache2 start` (on EC2 machine)
3. Check in browser: `http://<EC2_PUBLIC_IP>/`. You can see `Apache2 Default Page` if everything is ok.

To destroy infrastructure:

1. `terraform destroy`
