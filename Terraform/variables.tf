variable "region" {
    type = string 
    default = "ap-south-1"
}

variable "profile" {
    type = string
    default = "default"
}

variable "ami_id" {
    type = string
    default = "ami-0c1a7f89451184c8b" 
}
variable "slave_instance" {
    type = string
    default = "t3.small" 
}

variable "environment_name" {
    type = string
    default = "testing"  
}