resource "vsphere_virtual_machine" "master-taheri" {
  name             = var.machine_name   
  resource_pool_id = data.vsphere_host.host.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus         = var.vm_num_cpus
  memory           = var.vm_memory
  guest_id         = "ubuntu64Guest"
  firmware         = "efi"
 
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id    
  }
  network_interface {
    network_id = data.vsphere_network.network.id
  }
  disk {
    label = "Hard Disk 1"
    size  = 25
  }
}
