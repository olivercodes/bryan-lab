terraform {
  required_providers {
    xenorchestra = {
      source = "terra-farm/xenorchestra"
      version = "0.23.2"
    }
  }
}

# Configure the XenServer Provider
provider "xenorchestra" {
  # Must be ws or wss
  url      = var.xoa_url
  username = var.xoa_admin_username
  password = var.xoa_admin_password
  insecure = var.xoa_encrypt_traffic
}
