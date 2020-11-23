#Define Variables
variable "region" {
  default = "us-east-1"
}

variable "vpcCIDRblock" {
    default = "10.0.0.0/16"
}

variable "password" {
  default = "p@$$WORD09"
}

variable "amis" {
  type = map(string)
  default = {
    "us-east-1" = "ami-b374d5a5"
  }
}
