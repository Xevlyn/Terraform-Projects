
// Virtual Private Cloud (VPC)
resource "aws_vpc" "GrayyMainNet" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = var.name_tag
  }
}