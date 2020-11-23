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
  instance_type = "t2.xlarge"    # "t2.micro"
}


# terraform {
#   required_providers {
#     splunk = {
#       source = "splunk/splunk"
#       version = "1.3.1"
#     }
#   }
# }

# provider "splunk" {
#   url                  = "splunk01.corp.local:8089"
#   username             = "beduwensuyi"
#   password             = var.password
# }

# resource "splunk_apps_local" "terraform_splunk_app" {
#   filename         = true
#   name             = "/tmp/terraform-cloud-for-splunk_005.tgz"
#   explicit_appname = "terraform_cloud_for_splunk"
# }