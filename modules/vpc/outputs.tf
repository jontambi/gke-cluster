output "network" {
  value       = google_compute_network.gs-vpc
  description = "The VPC resource being created"
}

output "network_name" {
  value       = google_compute_network.gs-vpc.name
  description = "The name of the VPC being created"
}

output "network_self_link" {
  value       = google_compute_network.gs-vpc.self_link
  description = "The URI of the VPC being created"
}