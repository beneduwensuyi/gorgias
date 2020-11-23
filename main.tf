
provider "aws" {
  profile = "default"
  region  = var.region
}
# create the VPC
resource "aws_vpc" "My_VPC" {
  cidr_block = var.vpcCIDRblock
    tags = {
        Name = "My VPC"
    }
}
resource "aws_instance" "east_example" {
  ami           = var.amis[var.region]
  instance_type = "t2.xlarge"   
}
