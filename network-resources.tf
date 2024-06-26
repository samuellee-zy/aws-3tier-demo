# VPC
resource "aws_vpc" "three-tier-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "three-tier-vpc"
  }
}

# Public Subnets 
resource "aws_subnet" "three-tier-pub-sub-1" {
  vpc_id                  = aws_vpc.three-tier-vpc.id
  cidr_block              = "10.0.0.0/28"
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "${var.name}-pub-sub-1"
  }
}

resource "aws_subnet" "three-tier-pub-sub-2" {
  vpc_id                  = aws_vpc.three-tier-vpc.id
  cidr_block              = "10.0.0.16/28"
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "${var.name}-pub-sub-2"
  }
}

# Private Subnets
resource "aws_subnet" "three-tier-pvt-sub-1" {
  vpc_id                  = aws_vpc.three-tier-vpc.id
  cidr_block              = "10.0.0.32/28"
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = false
  tags = {
    Name = "${var.name}-pvt-sub-1"
  }
}
resource "aws_subnet" "three-tier-pvt-sub-2" {
  vpc_id                  = aws_vpc.three-tier-vpc.id
  cidr_block              = "10.0.0.48/28"
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = false
  tags = {
    Name = "${var.name}-pvt-sub-2"
  }
}

resource "aws_subnet" "three-tier-pvt-sub-3" {
  vpc_id                  = aws_vpc.three-tier-vpc.id
  cidr_block              = "10.0.0.64/28"
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = false
  tags = {
    Name = "${var.name}-pvt-sub-3"
  }
}
resource "aws_subnet" "three-tier-pvt-sub-4" {
  vpc_id                  = aws_vpc.three-tier-vpc.id
  cidr_block              = "10.0.0.80/28"
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = false
  tags = {
    Name = "${var.name}-pvt-sub-4"
  }
}
