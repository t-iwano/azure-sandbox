resource "azurerm_storage_account" "sa" {
  name = "${var.name}"
  resource_group_name = "${var.resource_group_name}"
  location = "${var.location}"
  account_type = "${var.account_type}"
}

resource "azurerm_storage_container" "sac" {
  count = "${length(split(",", var.container_name))}"
  name = "${element(split(",", var.container_name), count.index)}"
  resource_group_name = "${var.resource_group_name}"
  storage_account_name = "${azurerm_storage_account.sa.name}"
  container_access_type = "${var.container_access_type}"
}
