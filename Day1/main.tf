provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "web" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"

  tags = {
    Name = "web"
  }
}
