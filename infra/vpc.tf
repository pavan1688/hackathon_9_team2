
# Create a VPC
resource "aws_vpc" "hackathon" {
  cidr_block = "10.0.0.0/16"
  
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.hackathon.id
  cidr_block = "10.0.1.0/24"
  availability_zone ="us-east-1a"

  tags = {
    Name = "public"
  }
}

resource "aws_subnet" "db-subnet-1" {
  vpc_id     = aws_vpc.hackathon.id
  cidr_block = "10.0.2.0/24"
  availability_zone ="us-east-1a"

  tags = {
    Name = "db-subnet-1"
  }
}

resource "aws_subnet" "db-subnet-2" {
  vpc_id     = aws_vpc.hackathon.id
  cidr_block = "10.0.3.0/24"
  availability_zone ="us-east-1b"

  tags = {
    Name = "db-subnet-2"
  }
}

resource "aws_subnet" "eks-subnet-1" {
  vpc_id     = aws_vpc.hackathon.id
  cidr_block = "10.0.4.0/24"
  availability_zone ="us-east-1a"

  tags = {
    Name = "eks-subnet-1"
  }
}

resource "aws_subnet" "eks-subnet-2" {
  vpc_id     = aws_vpc.hackathon.id
  cidr_block = "10.0.5.0/24"
  availability_zone ="us-east-1b"

  tags = {
    Name = "eks-subnet-2"
  }
}
