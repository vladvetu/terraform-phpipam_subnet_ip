data "phpipam_subnet" "subnet" {
  subnet_address = "${var.subnet_address}"
  subnet_mask    = "${var.subnet_mask}"
}

data "phpipam_first_free_address" "next_address" {
  subnet_id = data.phpipam_subnet.subnet.subnet_id
}


resource "phpipam_address" "ip" {
  subnet_id   = data.phpipam_subnet.subnet.subnet_id
  ip_address  = data.phpipam_first_free_address.next_address.ip_address
  hostname    = "${var.hostname}"
  description = "${var.description}"

  lifecycle {
    ignore_changes = [
      subnet_id,
      ip_address,
    ]
  }
}