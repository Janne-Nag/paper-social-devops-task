output "aws_vm_ip" {
  value = module.aws_vm.public_ip
}

output "ibm_vm_ip" {
  value = module.ibm_vm.public_ip
}
