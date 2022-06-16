data "xenorchestra_pool" "vm_pool" {
  name_label = var.xen_cluster.xen_pool_name
}

data "xenorchestra_template" "vm_template" {
  name_label = var.xen_cluster.xen_vm_template_name
}

data "xenorchestra_network" "net" {
  name_label = var.xen_cluster.xen_network_name
}

data "xenorchestra_sr" "storage" {
  name_label = var.xen_cluster.xen_storage_name
}

output "vm_network_id" {
  value = data.xenorchestra_network.net.id
}

output "vm_storage_id" {
  value = data.xenorchestra_sr.storage.id
}

output "vm_template_id" {
  value = data.xenorchestra_template.vm_template.id
}

output "vm_pool_id" {
  value = data.xenorchestra_pool.vm_pool.id
}
