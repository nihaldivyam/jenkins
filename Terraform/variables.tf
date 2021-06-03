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

variable "deployer-public-key" {
    type = string
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC76WC+y2N11VhS9w59dGJEaNMDWeK6IA0AJEvIsOVD85zi+LMumXq3NNcmr6uSc+YSpQLHVWnw2x5XfQljXLGGjqPQthPJAscskd/WcAFBJajalZ7Rx6xyFXcDcLnWcpxX0OjQB2WsSQG4FuEVPEA0boidHT6Z85aqdjZ/oVh9fFhm/gIKssQFLdZBhh4pXaybjCC9cPFRfg896eppoGW/1jEA1m9sm5UOYj4CmVaglQGADUaHaPQFkVYcJfgihagHh+CG3J9KyoYkuqDkZuJGr5KvuoqSYKxJ1DOEvTtszcCER6Xp+bHK4Wdjlkqs3zjydHjTnk1vcaxuT4jeQidf Divyam"
  
}