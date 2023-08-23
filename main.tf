provider "aws" {
  region = "us-east-2"  # Change this to your desired AWS region
}

resource "aws_s3_bucket" "murthy99949220245" {
  bucket = "murthy99949220245"  # Change this to your desired bucket name
  acl    = "publi"  # You can change the ACL according to your needs

  tags = {
    Name = "murthy99949220245"
  }
}
