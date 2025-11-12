terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.86.0"
    }
  }
}

data "local_file" "ssh_infra_setup_public_key" {
  filename = var.bootstap_public_key # Adjust the relative path
}


resource "proxmox_virtual_environment_vm" "vm" {
  name = var.vm_name
  node_name = var.node_name

  initialization {
    ip_config {
      ipv4 {
        address   = var.ipv4address
        gateway   = var.ipv4gatway
      }
    }
    datastore_id = "local-vm"

    user_account {
      username    = "infra-setup"
      keys        = [trimspace(data.local_file.ssh_infra_setup_public_key.content)]
      password = "test"
    }
  }

  cpu {
    cores        = var.cores
    type         = "x86-64-v2-AES"
  }

  memory {
    dedicated = var.memory
    floating  = var.memory # set equal to dedicated to enable ballooning
  }

  disk {
    datastore_id = "local-vm"
    file_id  = var.template_file_id
    interface    = "virtio0"
    iothread  = true
    discard      = "on"
    size         = var.disk_size
  }

  network_device {
    bridge = "vmbr0"
  }
}
