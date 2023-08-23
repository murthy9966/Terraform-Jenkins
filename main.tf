provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"  # Adjust the CIDR block as needed

  tags = {
    Name = "MyVPC"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"  # Adjust the CIDR block for the subnet

  tags = {
    Name = "MySubnet"
  }
}

resource "aws_security_group" "my_sg" {
  name        = "my-security-group"
  description = "My security group for VPC"

  vpc_id = aws_vpc.my_vpc.id

  // Define your security group rules here
  // For example, allowing incoming SSH and HTTP traffic:
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Add more rules as needed
}
