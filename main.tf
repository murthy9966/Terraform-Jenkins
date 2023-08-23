provider "aws" {
  region     = "us-east-2"
  access_key = "AKIA3FAEK7GMT6T5CR7L"
  secret_key = "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"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"  # Specify the desired CIDR block for the VPC

  tags = {
    Name = "MyVPC"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"  # Specify the CIDR block for the subnet in the VPC

  tags = {
    Name = "MySubnet"
  }
}

resource "aws_security_group" "my_sg" {
  name_prefix = "MySecurityGroup-"
  description = "My security group for VPC"

  vpc_id = aws_vpc.my_vpc.id
}

# Define any additional resources, like route tables, internet gateways, etc. as needed.
