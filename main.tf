terraform {
    required_version = ">=0.12.26"
}

provider "aws" {
  region     = "us-east-1"
  access_key = "add your key"
  secret_key = "add your key"
}

resource "aws_instance" "cisco" {
  ami  = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
}

output "public_ip" {
    value = aws_instance.cisco.public_ip
}


output "hello_world" {
value ="hello, world"
}
