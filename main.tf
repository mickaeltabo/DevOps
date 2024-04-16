provider "aws" {
  region = "eu-west-3"
}

resource "aws_key_pair" "my_key_pair" {
  key_name   = "DevOps"
  public_key = file("/home/mtabo/Téléchargements/DevOps.pem")  # Chemin vers votre clé publique SSH
}

resource "aws_instance" "example" {
  ami           = "ami-00c71bd4d220aa22a"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.my_key_pair.key_name  # Utilisation de la clé publique créée précédemment
}