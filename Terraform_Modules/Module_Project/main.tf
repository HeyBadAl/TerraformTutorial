terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# configure the AWS provider 
provider "aws" {
  region     = "eu-central-1"
  access_key = "asdlksjhfkjsdnbfsdbf"
  secret_key = "asdkjsdfnkjdsfkjdsbfkjbndsjfkndsjkf"
}


# module "myec2" {
#   source = "../modules/ec2"
#   ami_id = "ami-jnkakjdnsjdnjkasd"
#   insatance_type = "t2.large"
#   servers = 2
# }

# TODO: go with default values 
module "myec2" {
  source = "../modules/ec2"
  ami_id = var.ami_id 
  instance_type = var.instance_type
  servers = var.x
  }
