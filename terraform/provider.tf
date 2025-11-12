terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.86.0"
    }
  }
  }


  provider "proxmox" {
  endpoint  = var.pve_endpoint
  api_token = var.pve_api_token
  insecure = var.pve_tls_insecure
  ssh {
    username = "root"
    password = var.pve_ssh_pwd #smell replace by a root ssh
  }
}
