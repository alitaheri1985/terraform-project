data "vsphere_datacenter" "datacenter" {
  name = "intellare"
}

data "vsphere_datastore" "datastore" {
  name          = "datastore_nvme"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network" {
  name          = "VM Network"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_host" "host" {
  name          = "192.168.88.173"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "template" {
  name          = "template"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
