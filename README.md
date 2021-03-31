# terraform-playground

## Install Openstack

https://ubuntu.com/openstack/install

## Launch Compute v2 instance

terraform init

terraform plan

terraform apply

## Add new images (CLI)
source ~/admin-openrc.sh 
openstack image create ubuntu --file mini.iso --disk-format iso --container-format bare
openstack image create centos --file CentOS-8.3.2011-x86_64-boot.iso --disk-format iso --container-format bare

 openstack image list
+--------------------------------------+--------+--------+
| ID                                   | Name   | Status |
+--------------------------------------+--------+--------+
| 7d2e69be-3a77-4a9f-a7b5-7c0bad5a092a | centos | active |
| da1965db-174b-4433-b511-6a72c36e3fa1 | cirros | active |
| 76e74db7-847a-4226-85a0-c1a36ec337ed | ubuntu | active |
+--------------------------------------+--------+--------+