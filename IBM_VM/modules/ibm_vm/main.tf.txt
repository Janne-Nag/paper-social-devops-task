resource "ibm_is_instance" "this" {
  name           = var.instance_name
  image          = "r006-12345678-90ab-cdef-1234-567890abcdef" # Ubuntu image ID
  profile        = "bx2-2x8"
  zone           = "${var.region}-1"
  keys           = [var.ssh_key_id]
  primary_network_interface {
    subnet = var.subnet_id
  }
}
