terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


# create an EC2 Instance 
resource "aws_instance" "server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count         = var.servers
}
