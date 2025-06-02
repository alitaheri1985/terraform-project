variable "machine_name" {
  type = string
}
variable "password" {
  type = string
}

variable "vsphere_user" {
  type = string
}
variable "vsphere_password" {
  type = string
}

variable "vsphere_server" {
  type = string
}

variable "datacenter" {
  type = string
}

variable "datastore" {
  type = string
}

variable "network" {
  type = string
}

variable "vm_template" {
  type = string
}

variable "vm_folder" {
  type = string
}

variable "vm_resource_pool" {
  type = string
}

variable "vm_num_cpus" {
  type    = number
  default = 1
}

variable "vm_memory" {
  type    = number
  default = 1024
}

variable "vm_disk_size" {
  type    = number
  default = 20
}

variable "vm_guest_id" {
  type    = string
  default = "otherGuest"
}

variable "vm_network_interface_type" {
  type    = string
  default = "vmxnet3"
}

variable "vm_wait_for_guest_ip_timeout" {
  type    = number
  default = 10
}

