module "make_a_vm" {
  source  = "app.terraform.io/beduwensuyi/make-a-vm/aws"
  version = "1.0.1"

  tag_name = "newVm"
  tag_owner = "beduwensuyi"
  tag_ttl = "24h"
}
