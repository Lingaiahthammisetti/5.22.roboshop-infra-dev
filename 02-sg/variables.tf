variable "project_name" {
    default = "roboshop"
}
variable "environment" {
  default =  "dev"
}
variable "common_tags" {
  default =  {
     Project = "roboshop"
     Environment = "dev"
     Terraform = true
  }
}
variable "db_sg_description" {
  default = "SG for DB Mysql Instances"
  
}

variable "vpn_sg_rules" {
  default = [ 
     {
      from_port        = 943
      to_port          = 943
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    },
     {
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    },
     {
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    },
     {
      from_port        = 1194
      to_port          = 1194
      protocol         = "udp"
      cidr_blocks      = ["0.0.0.0/0"]
    }
  ]
 
}