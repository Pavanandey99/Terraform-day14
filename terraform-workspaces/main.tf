provider "aws" {
  
}

resource "aws_key_pair" "KP" {
    key_name = "public"
    public_key = file("~/.ssh/id_ed25519.pub")
  
}

