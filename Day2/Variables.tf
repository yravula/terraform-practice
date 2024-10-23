provider "aws" {
  region      = "us-east-1"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "ami_id" {
  type = string
}

resource "aws_instance" "webserver" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "webserver"
  }
}

output "public_ip" {
  value = aws_instance.webserver
}