terraform {
  required_providers {
    vsphere = {
      source = "vmware/vsphere"
      version = "2.13.0"
    }
  }
}

provider "vsphere" {
  user                 = "intellare.infra@intellare.local"
  password             = "1ln3!WP%*BvhRP"
  vsphere_server       = "vcenter.intellare.local"
  allow_unverified_ssl = true
  api_timeout          = 10
}

resource "vsphere_virtual_machine" "master"{
  name             = "taheri-master"
  resource_pool_id = data.vsphere_host.host.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus         = 2
  memory           = 2
  guest_id         = "ubuntu64Guest"
  firmware = "efi"
  network_interface {
    network_id = data.vsphere_network.network.id
  }
  disk {
    label = "disk0"
    size  = 20
  }
  
  clone {
    template_uuid =  data.vsphere_virtual_machine.template.id

  }
}
  
resource "vsphere_virtual_machine" "master"{
  name             = "taheri-worker"
  resource_pool_id = data.vsphere_host.host.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus         = 2
  memory           = 1024
  guest_id         = "ubuntu64Guest"
  firmware = "efi"
  network_interface {
    network_id = data.vsphere_network.network.id
  }
  disk {
    label = "disk0"
    size  = 20
  }
  
  clone {
    template_uuid =  data.vsphere_virtual_machine.template.id

  }
}