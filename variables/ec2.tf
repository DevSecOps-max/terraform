resource "aws_instance" "roboshop_instance" {
      ami                    =  var.ami_id  # Left side and right side names need not be the same
      instance_type          =  var.instance_type
      vpc_security_group_ids = [ aws_security_group.allow_all.id ]

  tags = var.ec2_tags
}

resource "aws_security_group" "allow_all" {
    name        = var.sg_name
    description = var.sg_description

ingress {
    from_port        = var.from_port  # Allowing all 
    to_port          = var.to_port  # Allowing all
    protocol         = "-1"  # equivalent to all
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = var.from_port  # Allowing all 
    to_port          = var.to_port  # Allowing all
    protocol         = "-1"  # equivalent to all
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.sg_tags
  
}
