
# ********* Internet Gateway **************

resource "aws_internet_gateway" "IG" {
  vpc_id = aws_vpc.GrayyMainNet.id

  tags = {
    Name = var.name_tag_ig
  }
}

# ************* NAT Gateway ****************

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat-eip.id
  subnet_id     = aws_subnet.public-1.id

  tags = {
    Name = var.name_nat
  }
}

# ************ Elastic IP ****************

resource "aws_eip" "nat-eip" {
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.IG]
}

# ********** Subnet Route associations ****************

resource "aws_route_table_association" "GrayyNet-Public-rt-a-1" {
  subnet_id      = aws_subnet.public-1.id
  route_table_id = aws_route_table.PublicRoute.id
}
resource "aws_route_table_association" "GrayyNet-Public-rt-a-2" {
  subnet_id      = aws_subnet.public-2.id
  route_table_id = aws_route_table.PublicRoute.id
}

