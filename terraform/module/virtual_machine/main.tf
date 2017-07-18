resource "azurerm_virtual_machine" "server" {
  name = "${var.name}"
  location = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  network_interface_ids = ["${split(",", var.network_interface_ids)}"]
  vm_size = "${var.vm_size}"

  storage_os_disk {
    name = "${var.os_disk_name}"
    vhd_uri = "${var.vhd_uri}"
    image_uri = "${var.image_uri}"
    caching = "${var.caching}"
    create_option = "${var.create_option}"
    os_type = "${var.os_type}"
  }

  os_profile {
    computer_name = "${var.computer_name}"
    admin_username = "${var.admin_username}"
    admin_password = "${var.admin_password}"
  }

  os_profile_linux_config {
    disable_password_authentication = "${var.disable_password_authentication}"
    ssh_keys {
      path = "/home/${var.admin_username}/.ssh/authorized_keys"
      key_data = "${file(var.ssh_keys)}"
    }
  }

}
