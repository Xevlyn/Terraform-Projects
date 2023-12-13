// VPC
variable "cidr_block" {
  default = "10.0.0.0/16"
}
variable "name_tag" {
  default = "GrayyMainNet"
}

variable "availability-zone-a" {
  default = "us-east-1a"
}
variable "availability-zone-b" {
  default = "us-east-1b"
}




// Subnets

# Private
variable "private-1" {
  default = "10.0.1.0/24"

}

variable "private-2" {
  default = "10.0.3.0/24"
}

# Public
variable "public-1" {
  default = "10.0.2.0/24"
}

variable "public-2" {
  default = "10.0.4.0/24"
}


// Internet Gateway

variable "name_tag_ig" {
  default = "GrayyNet-IG"
}

// Route table
variable "name_tag_rt_public" {
  default = "GrayyNet-Public-rt"
}

variable "name_tag_rt_private" {
  default = "GrayyNet-Private-rt"
}

// NAT gateway

variable "name_nat" {
  default = "GrayyNet-NAT-public"
}



# //ec2 instance

# variable "ec2_name_tag" {
#   default = ["Web-server", "App-server"]
#   type    = list
# }

# variable "instance_type" {
#                 #   0          1 
#   default = ["t2.medium", "t2.micro"]
#   type    = list
# }

# variable "ami_id" {
#   // for the count.index
#   default = {
#     0: "ami-093467ec28ae4fe03",
#     1: "ami-0efcece6bed30fd98"
#   }
#   type = map
# }

# variable "availability_zone_count" {
#   default = ["us-east-1a","us-east-1b"]
# }


