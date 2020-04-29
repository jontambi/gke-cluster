resource "google_compute_subnetwork" "gs-network" {
  name          = "${var.environment}-${var.subnet_name}"
  ip_cidr_range = var.ip_cidr_range
  network       = var.network_name
  project       = var.project_id
#  secondary_ip_range {
#    range_name    = "tf-test-secondary-range-update1"
#    ip_cidr_range = "192.168.10.0/24"
#  }
}
