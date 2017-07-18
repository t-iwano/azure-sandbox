output "name" {
  value = "${azurerm_virtual_network.vn.name}"
}

output "subnet_id" {
  value = "${join(",", azurerm_subnet.sn.*.id)}"
}
