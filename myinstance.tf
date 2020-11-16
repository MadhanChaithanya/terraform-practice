provider "aws" {
#  access_key = ""
#  secret_key = ""
  region = "eu-west-1"
}

resource "aws_instance" "intro" {
  ami = "ami-0dc8d444ee2a42d8a"
  instance_type = "t2.micro"
  availability_zone = "eu-west-1a"
  key_name = "terra-key"
  vpc_security_group_ids = ["sg-a32e33e5"]
  tags = {
    Name = "my-terra"
  }
}


