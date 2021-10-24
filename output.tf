output "ip_address" {
  description = "IP Address"
  value       = phpipam_address.ip.ip_address
}

output "hostname" {
  description = "IP hostname"
  value       = phpipam_address.ip.hostname
}

output "ip_description" {
  value       = phpipam_address.ip.description
  description = "IP Description"
}

output subnet {
  value       = data.phpipam_subnet.subnet
  description = "description"
}
