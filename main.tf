terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.aws_region
}

output "amazon_linux_ami_id" {
  value = "${aws_instance.app_server.ami}"
}


resource "aws_instance" "app_server" {
  ami = var.ami_to_use[var.aws_region]
  instance_type = "t2.micro"

  tags = {
    Name = "First-Test"
  }
}
