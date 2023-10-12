terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.19"
    }
  }
  required_version = ">= 1.5.7"
}

# Configure the AWS Provider
provider "aws" {
   region = var.location
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-00874d747dde814fa"
  instance_type = var.instance_type
  key_name      = var.keyname
  
  tags = {
           Name = var.tag
}

# Output the public IP address of the instance
output "public_ip" {
  value = aws_instance.example.public_ip
}
