provider "aws" {
  region = var.region
}

resource "aws_vpc" "vpc" {
    cidr_block = var.vpccidr_block

}

resource "aws_subnet" "test" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subcidr_block
  
}
resource "aws_instance" "ec2" {
  ami                    = var.ami
  instance_type          = var.instancetype
  subnet_id = aws_subnet.test.id
  
    tags = {
     Name = var.tag
  }
}