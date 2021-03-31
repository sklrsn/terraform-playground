resource "openstack_compute_instance_v2" "node" {
  name            = uuid()
  image_name      = "ubuntu"
  flavor_id       = "3"
  key_pair        = var.openstack_keypair_name
  security_groups = ["default"]

  network {
    name = var.tenant_network   
  }

  user_data = file("init.sh")
}

output "fixed_ip_v4" {
  value       = openstack_compute_instance_v2.node.network.0.fixed_ip_v4
}
