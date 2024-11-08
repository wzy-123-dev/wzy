output "public_ip" {

  value = [for instance in azurerm_linux_virtual_machine.my_vm : instance.public_ip_address]

}