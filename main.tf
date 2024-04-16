provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "example" {
  ami           = "ami-00c71bd4d220aa22a"
  instance_type = "t2.micro"
  key_name      = "DevOps"
  
  vpc_settings {
    vpc_id    = "vpc-00e50b8aeffaba06e"
    subnet_id = "subnet-070d42d20554771c7"
  }
}
