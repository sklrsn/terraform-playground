resource "openstack_compute_instance_v2" "basic" {
  name            = "basic"
  image_id        = "ad091b52-742f-469e-8f3c-fd81cadf0743"
  flavor_id       = "3"
  key_pair        = "${var.openstack_keypair_name}"
  security_groups = ["default"]

  network {
    name = "${var.tenant_network}"
  }
}