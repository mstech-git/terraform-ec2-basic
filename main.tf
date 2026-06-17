terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"  # Mumbai region
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0f58b397bc5c1f2e8" # Amazon Linux 2023 AMI
  instance_type = "t2.micro"
  
  tags = {
    Name = "Terraform-EC2-by-Mohan"
  }
}
