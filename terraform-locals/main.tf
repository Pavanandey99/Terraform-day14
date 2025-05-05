provider "aws" {
  
}

locals {
    region = "eu-north-1"
    key_name = "from locals"
  
}

resource "aws_key_pair" "KP" {
    key_name = "local -${local.key_name}"
    public_key = file("~/.ssh/id_ed25519.pub")
  
}

