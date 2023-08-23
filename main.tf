provider "aws" {
  region = "us-east-2"  # Change this to your desired AWS region
   AWS_ACCESS_KEY_ID = "AKIA3FAEK7GMT6T5CR7L"
    AWS_SECRET_ACCESS_KEY = "x6skmkHZa+0/6yFo4u0qjY/D9PciHttZfgNRo9ff"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"  # Change this to your desired CIDR block

  tags = {
    Name = "MyVPC"
  }
}
