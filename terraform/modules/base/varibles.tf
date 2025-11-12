variable "vm_name" {
  description = "The name of the virtual machine in Proxmox."
  type        = string
}

variable "bootstap_public_key" {
  description = "The SSH public key used to set up automated access to the VM."
  type        = string
  sensitive   = false
}

variable "template_file_id" {
  description = "The ID or path of the VM template to use when creating the VM (format: local:template/vm-100-template.qcow2)."
  type        = string
}

variable "cores" {
  description = "Number of CPU cores to allocate to the VM."
  type        = number
}

variable "memory" {
  description = "Amount of RAM (in MB) to allocate to the VM."
  type        = string
}

variable "disk_size" {
  description = "Size of the VM's disk (in GB)."
  type        = string
}


variable "ipv4address" {
  description = "The static IPv4 address to assign to the VM (leave empty for DHCP)."
  type        = string
  default     = ""
}

variable "ipv4gatway" {
  description = "The IPv4 gateway for the VM's network interface."
  type        = string
  default     = ""
}

variable "node_name" {
  description = "The name of the Proxmox node where the VM will be deployed."
  type        = string
  default     = ""
}
