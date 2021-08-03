terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "1.43.0"
    }
  }
}

provider "openstack" {
  # Configuration options
}
