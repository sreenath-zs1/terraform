terraform {
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

resource "aws_vpc" "vpc_1" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    
    tags = {
        Name = "My VPC1-sree"
    }
}
