provider "aws" {
  region = "us-east-1"  # Change this to your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "murthy9994922024"  # Change this to your desired bucket name
  acl    = "private"  # You can change the ACL according to your needs

  tags = {
    Name = "My S3 Bucket"
  }
}
