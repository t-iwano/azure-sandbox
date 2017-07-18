resource "azurerm_network_interface" "private" {
  name = "${var.name}"
  location = "${var.location}"
  resource_group_name = "${var.resource_group_name}"

  ip_configuration {
    name = "${var.name}_ipconfig"
    subnet_id = "${var.subnet_id}"
    private_ip_address_allocation = "${var.allocation}"
  }
}
