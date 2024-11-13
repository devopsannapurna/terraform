provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count         = 10
  ami           = "ami-063d43db0594b521b"
  instance_type = "t2.micro"
  tags = {
    Name = "raham-server"
  }
}
