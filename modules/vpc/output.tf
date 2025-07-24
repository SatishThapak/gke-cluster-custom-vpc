output "network_id" {
  description = "VPC network ID"
  value       = google_compute_network.vpc.id
}

output "subnet_self_link" {
  description = "Subnetwork self link"
  value       = google_compute_subnetwork.subnet.self_link
}
