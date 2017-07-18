resource "azurerm_public_ip" "pub" {
  name = "${var.name}"
  location = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  public_ip_address_allocation = "${var.allocation}"
}
