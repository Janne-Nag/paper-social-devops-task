output "public_ip" {
  value = ibm_is_instance.this.primary_network_interface[0].primary_ipv4_address
}
