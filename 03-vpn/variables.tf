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