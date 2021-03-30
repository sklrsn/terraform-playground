variable "openstack_user_name" {
    description = "The username for the Tenant."
    default  = "admin"
}

variable "openstack_password" {
    description = "The password for the Tenant."
    default  = "admin"
}

variable "openstack_auth_url" {
    description = "The endpoint url to connect to OpenStack."
    default  = "http://192.168.0.104:5000/v3/"
}

variable "openstack_tenant_name" {
    description = "The name of the Tenant."
    default  = "my_tenant"
}

variable "openstack_keypair_name" {
    description = "The keypair to be used."
    default  = "admin"
}

variable "tenant_network" {
    description = "The network to be used."
    default  = "my_network"
}