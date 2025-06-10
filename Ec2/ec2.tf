resource "aws_instance" "roboshop_instance" {
  ami =  "ami-09c813fb71547fc4f"
  instance_type =  "t2.micro"
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]

  tags = {
    Name = "Hello Roboshop World"
  }
}


resource "aws_security_group" "allow_all" {
    name        = "Allow All"
    description = "Allow all traffic"

ingress {
    from_port        = 0  # Allowing all 
    to_port          = 0  # Allowing all
    protocol         = "-1"  # equivalent to all
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0  # Allowing all 
    to_port          = 0  # Allowing all
    protocol         = "-1"  # equivalent to all
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_all"
  }
}
