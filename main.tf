provider "aws" {
  region = "us-east-2"  
   Acess key = "AKIA3FAEK7GMT6T5CR7L"
   secret key = "x6skmkHZa+0/6yFo4u0qjY/D9PciHttZfgNRo9ff"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "192.168.0.0/22"  # Change this to your desired CIDR block

  tags = {
    Name = "MyVPC"
  }
}
