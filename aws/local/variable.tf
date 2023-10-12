variable "instance_type" {
   type = string
   description = "t2.micro"
}

# No default value
variable "tag" {
   type = string
   description = "The tag for the EC2 instance"
}

# default value for the variable location
variable "location" {
   type = string
   description = "The project region"
   default = "us-east-1"
}

# default value for the keypair used
variable "keyname" {
   type = string
   description = "The kaypair"
   default ="vprofile-key"
}
