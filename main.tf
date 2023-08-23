provider "aws" {
  region = "us-east-1" # Change this to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-053b0d53c279acc90" # Replace with your desired AMI ID
  instance_type = "t2.micro"             # Replace with your desired instance type
  key_name      = "divya"   # Replace with your SSH key pair name
  subnet_id     = aws_subnet.example_subnet[0].id # Use the subnet from the VPC example in the previous answer
  tags = {
    Name = "example-instance"
  }
}

resource "aws_security_group" "example" {
  name        = "example-instance-sg"
  description = "Security group for example EC2 instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow SSH access from anywhere (for demonstration purposes)
  }

  # Add more ingress rules as needed for your application
}

# Associate the security group with the EC2 instance
resource "aws_network_interface_sg_attachment" "example" {
  security_group_id    = aws_security_group.example.id
  network_interface_id = aws_instance.example.network_interface_ids[0]
}
