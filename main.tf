resource "openstack_compute_instance_v2" "basic" {
  name            = uuid()
  image_id        = "da1965db-174b-4433-b511-6a72c36e3fa1"
  flavor_id       = "3"
  key_pair        = var.openstack_keypair_name
  security_groups = ["default"]

  network {
    name = var.tenant_network   
  }

  user_data = file("init.sh")

}