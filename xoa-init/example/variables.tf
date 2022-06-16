variable "xen_cluster" {
  type = object({
    xen_pool_name         = string
    xen_vm_template_name  = string
    xen_network_name      = string
    xen_storage_name      = string
  })
}
