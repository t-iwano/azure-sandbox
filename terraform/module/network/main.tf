resource "azurerm_virtual_network" "vn" {
  name = "${var.name}"
  resource_group_name = "${var.resource_group_name}"
  address_space = ["${split(",", var.address_space)}"]
  location = "${var.location}"
}

resource "azurerm_subnet" "sn" {
  count = "${length(split(",", var.subnet_name))}"
  name = "${element(split(",", var.subnet_name), count.index)}"
  resource_group_name = "${var.resource_group_name}"
  virtual_network_name = "${azurerm_virtual_network.vn.name}"
  address_prefix = "${element(split(",", var.address_prefix), count.index)}"
}
