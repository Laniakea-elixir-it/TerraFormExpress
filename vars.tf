variable vm_name {
type = string
default = "terraform-ga"
}
variable image_name{
type = string
#default = "galaxy20_05lite" 
}

variable flavor_name {
type = string
default = "large"
}

variable key_pair {
type = string
default = "laniakea-robot"
}

variable security_groups {
type = list
default = ["default","http","ssh"]
}

variable network_name_public {
type = string
default = "public_net" 
}
output "public_ip"{
value = openstack_compute_instance_v2.test.network[0].fixed_ip_v4
}
