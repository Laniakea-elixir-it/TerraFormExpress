terraform {
  required_version = ">= 1.4.0"
  required_providers {
        openstack = {
        source  = "terraform-provider-openstack/openstack"
        version = "~> 1.53.0"
        }
  }
}

provider "openstack" {
  //cloud = "recas"
  tenant_id = "3b38073bf9e04049bf0cab08b2c1c9a0"
  auth_url = "https://keystone.recas.ba.infn.it/v3"
  endpoint_overrides = {
    "network"  = "https://neutron.recas.ba.infn.it/v2.0/"
    "volumev3" = "https://cinder.recas.ba.infn.it/v3/"
    "image" = "https://glance.recas.ba.infn.it/v2/"
  }
}
