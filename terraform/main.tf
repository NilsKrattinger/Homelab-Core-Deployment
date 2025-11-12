module "base" {
  source      = "./modules/base"
  vm_name     = "ubuntu"
  cores       = 2
  memory      = 4096
  disk_size   = "20"
  ipv4address = "10.0.0.2/24"
  ipv4gatway  = "10.0.0.1"
  node_name   = "pv10"
  bootstap_public_key = "/home/nils/.ssh/proxmox_ansible.pub"
  template_file_id = "local:iso/debian-13-generic-amd64.img"
}