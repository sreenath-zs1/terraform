terraform {
  backend "remote" {
    organization = "zelarsoft"

    workspaces {
      name = "Example1"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0eb5f3f64b10d3e0e"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform cloud state remote"
  }
}



#Terraform login
#terraform cloud api token
#In organization add variable like accesskey and secret key