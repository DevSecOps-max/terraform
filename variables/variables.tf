variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI ID of RHEL9 Join Devops"
}

variable "instance_type" {
    default =  "t2.micro"

}

variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "Hello_Roboshop_world"
        purpose = "variables_demo"
    }

}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_description" {
    default = "allowing all the ports from the internet"

}


variable "from_port" {
    default = 0
}

variable "to_port" {
    default = 0
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    default  = {
        Name = "allow-all"
    }

}




