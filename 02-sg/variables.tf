variable "common_tags" {
    type = map
    default = {
        Project = "roboshop"
        Environment = "dev"
        Terraform = "true"
    }
}


variable "project_name" {
    #type = string
    default ="roboshop" 
}

variable "environment" {
    #type = string
    default ="dev"    
}

variable "sg_tags" {
    default = {}
    type = map
}

variable ingress_rules {

    default = [
    {
        description      = "Allow all 443"
        from_port        = 443
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    },
    # {
    #     description      = "Allow port 22"
    #     from_port        = 22
    #     to_port          = 22
    #     protocol         = "tcp"
    #     cidr_blocks      = ["0.0.0.0/0"]
    #     #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    # },
    {
        description      = "Allow port 80"
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    }
  ]  
}   

# variable "name" {
#     default = ""
#     type = string
# }

# variable "public_subnet_cidr" {
#     default = ["10.0.0.0/24", "10.0.2.0/24"]
# }

# variable "private_subnet_cidr" {
#     default = ["10.0.11.0/24", "10.0.12.0/24"]
# }

# variable "database_subnet_cidr" {
#     default = ["10.0.21.0/24", "10.0.22.0/24"]
# }


# variable "is_peering_required" {
#     default = true
# }


