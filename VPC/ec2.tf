# resource "aws_instance" "kyevic" {
#   #count = length(var.ec2_name_tag)
#   ami               = "ami-0230bd60aa48260c6"
#   instance_type     = "t2.micro"
#   #availability_zone = "us-east-1a"
#   subnet_id         = var.public-1
#   #security_groups   = ["aws_security_group.main-grayy-sg.name"]
#   #ecs_associate_public_ip_address = "false"

#   tags = {
#     Name = "Instance-1"
#   }
# }

# resource "aws_instance" "markov" {
#   #count = length(var.ec2_name_tag)
#   ami               = "ami-018ba43095ff50d08"
#   instance_type     = "t2.micro"
#   #availability_zone = "us-east-1b"
#   subnet_id         = var.public-2
#   #security_groups   = ["aws_security_group.main-grayy-sg.name"]
#   #ecs_associate_public_ip_address = "false"

#   tags = {
#     Name = "Instance-2"
#   }
# }

# # resource "aws_instance" "testing"{
# #   count = length(var.ec2_name_tag)
# #   ami           = var.ami_id[count.index] 
# #   instance_type = var.instance_type[count.index]
# #   availability_zone = var.availability_zone_count[count.index]

# #   tags = {
# #     Name = var.ec2_name_tag[count.index]
# #   }
# # }

# resource "aws_security_group" "main-grayy-sg" {
#   name        = "main-grayy-sg"
#   description = "Allow ICMP and SSH traffic"
#   vpc_id      = aws_vpc.GrayyMainNet.id

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"] # Allow SSH traffic from any IP
#   }

#   ingress {
#     from_port   = -1 # -1 for all ICMP types
#     to_port     = -1 # -1 for all ICMP types
#     protocol    = "icmp"
#     cidr_blocks = ["0.0.0.0/0"] # Allow ICMP traffic from any IP
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"] # Allow all outbound traffic
#   }

#   tags ={
#     Name = "main-grayy-sg"
#   }
# }
