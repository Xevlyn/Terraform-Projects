//  Subnets

# ************ Private ******************
resource "aws_subnet" "private-1" {
  vpc_id            = aws_vpc.GrayyMainNet.id
  cidr_block        = var.private-1
  availability_zone = var.availability-zone-a

  tags = {
    Name = "GrayyNet-Private-1"
  }
}
resource "aws_subnet" "private-2" {
  vpc_id            = aws_vpc.GrayyMainNet.id
  cidr_block        = var.private-2
  availability_zone = var.availability-zone-b

  tags = {
    Name = "GrayyNet-Private-2"
  }
}

# ************* Public *******************
resource "aws_subnet" "public-1" {
  vpc_id            = aws_vpc.GrayyMainNet.id
  cidr_block        = var.public-1
  availability_zone = var.availability-zone-a

  tags = {
    Name = "GrayyNet-Public-1"
  }
}
resource "aws_subnet" "public-2" {
  vpc_id            = aws_vpc.GrayyMainNet.id
  cidr_block        = var.public-2
  availability_zone = var.availability-zone-b

  tags = {
    Name = "GrayyNet-Public-2"
  }
}


# ****************** Route table *******************

resource "aws_route_table" "PublicRoute" {
  vpc_id = aws_vpc.GrayyMainNet.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IG.id
  }


  tags = {
    Name = var.name_tag_rt_public
  }
}

resource "aws_route_table" "PrivateRoute" {
  vpc_id = aws_vpc.GrayyMainNet.id

  route {
    cidr_block = var.public-1
    gateway_id = aws_nat_gateway.nat.id
  }


  tags = {
    Name = var.name_tag_rt_private
  }
}