variable "name" {
  description = "virtual machine name"
}

variable "location" {
  description = "location name"
}

variable "resource_group_name" {
  description = "resource group name"
}

variable "network_interface_ids" {
  description = "network interface ids"
}

variable "vm_size" {
  description = "virtual machine size"
}

variable "os_disk_name" {
  description = "os disk name"
}

variable "vhd_uri" {
  description = "vhd uri"
}

variable "image_uri" {
  description = "image_uri"
}

variable "caching" {
  description = "caching"
}

variable "create_option" {
  description = "create option"
}

variable "os_type" {
  description = "os type"
}

variable "computer_name" {
  description = "computer name"
}

variable "admin_username" {
  description = "admin user name"
}

variable "admin_password" {
  description = "admin user password"
}

variable "disable_password_authentication" {
  description = "disable password authentication"
}

variable "ssh_keys" {
  description = "ssh public key path"
}
