provider "aws" {
  
}

resource "aws_key_pair" "KP" {
    key_name = "KP from local"
    public_key = file("~/.ssh/id_ed25519.pub")
  
}

resource "aws_instance" "ec2" {
    ami = "ami-08f78cb3cc8a4578e"
    instance_type = "t3.micro"
    key_name = aws_key_pair.KP.key_name
    tags = {
        Name = "ec2"
    }

  
}