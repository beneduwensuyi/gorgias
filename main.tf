module "make_a_vm" {
  source  = "app.terraform.io/beduwensuyi/make-a-vm/aws"
  version = "1.0.1"

  os = "ubuntu"
  size = "t2.small "
  tag_name = "AWSserver"
  tag_owner = "beduwensuyi"
  tag_ttl = 72
}
