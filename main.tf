provider "aws" {
  region = "us-east-2" # Change this to your desired AWS region
}

resource "aws_vpc" "example" {
  cidr_block = "192.168.0.0/22" # Replace with your desired VPC CIDR block

  tags = {
    Name = "example-vpc"
  }
}

resource "aws_subnet" "example_subnet" {
  count           = 2
  vpc_id          = aws_vpc.example.id
  cidr_block      = "192.168.1.0/24" # Replace with your desired subnet CIDR blocks
  availability_zone = "us-east-2a" # Replace with your desired availability zones

  tags = {
    Name = "example-subnet-${count.index + 1}"
  }
}
