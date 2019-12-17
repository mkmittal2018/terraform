provider "aws" {
  region = "ap-southeast-2"
  access_key = ""
}

resource "aws_instance" "ec2_instance" {
  ami = "ami-0975ce566eec139c3"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0d57354edfc68dd18"]
  key_name = "myec2"
  tags = {
    Name = "example instance"
  }

}
