variable "pve_tls_insecure" {
  description = "Set to true to ignore certificate errors"
  type        = bool
  default     = false
}
variable "pve_endpoint" {
  description = "The endpoint of the proxmox server"
  type        = string
}
variable "pve_node_name" {
  description = "Name of the proxmox node to create the VMs on"
  type        = string
  default     = "pve10"
}
variable "pve_ssh_user" {
  description = "The username for the proxmox user for ssh"
  type        = string
  sensitive   = false
  default     = "root"

}
variable "pve_ssh_key_file" {
  description = "The password for the proxmox user for ssh"
  type        = string
  sensitive   = false
}

variable "pve_ssh_pwd" {}

variable "pve_api_token" {
  description = "The Token used to connect on proxmox PVE server"
  type        = string
  sensitive   = true
}
