output "ip_address" {
  description = "IP Address"
  value       = phpipam_first_free_address.next_address.*.ip_address
}

output "hostname" {
  description = "IP hostname"
  value       = phpipam_first_free_address.next_address.*.hostname
}

output "ip_description" {
  value       = phpipam_first_free_address.next_address.*.description
  description = "IP Description"
}

output subnet {
  value       = data.phpipam_subnet.subnet
  description = "description"
}
