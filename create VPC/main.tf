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
    cidr_block = "10.0.0.0/16"  #var.cidr_block
    instance_tenancy = "default"
    
    tags = {
        Name = "My VPC1-sree"
    }
}
resource "aws_subnet" "public-1" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = "10.0.101.0/24"
  availability_zone ="us-east-1a"
 
  tags = {
    Name = "public subnet-1"
  }
}

resource "aws_subnet" "public-2" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = "10.0.102.0/24"
  availability_zone ="us-east-1b"
  
  tags = {
    Name = "public subnet-2"
  }
}

resource "aws_subnet" "public-3" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = "10.0.103.0/24"
  availability_zone ="us-east-1c"
  
  tags = {
    Name = "public subnet-3"
  }
}


resource "aws_subnet" "private-1" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = "10.0.1.0/24"
  availability_zone ="us-east-1a"
 
  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private-2" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = "10.0.2.0/24"
  availability_zone ="us-east-1b"
  
  tags = {
    Name = "private-subnet-2"
  }
}

resource "aws_subnet" "private-3" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = "10.0.3.0/24"
  availability_zone ="us-east-1c"
  
  tags = {
    Name = "private-subnet-3"
  }
}