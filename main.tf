data "phpipam_subnet" "subnet" {
  subnet_address = var.subnet_address
  subnet_mask    = var.subnet_mask
}

resource "phpipam_first_free_address" "next_address" {
  count = var.ip_count
  subnet_id   = data.phpipam_subnet.subnet.subnet_id
  hostname    = var.hostnames[count.index]
  description = "${var.description}"
  owner       = var.phpipam_username
  
  lifecycle {
    ignore_changes = [
      subnet_id,
      ip_address,
    ]
  }
}