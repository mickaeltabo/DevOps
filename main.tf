provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "example" {
  ami           = "ami-00c71bd4d220aa22a"
  instance_type = "t2.micro"
  key_name      = "DevOps"
}
