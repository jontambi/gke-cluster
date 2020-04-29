/******************************************
  Create Container Cluster
 *****************************************/

resource "google_container_cluster" "gs-gke-cluster" {
  name                     = "${var.environment}-${var.cluster_name}"
  description              = var.description
  project                  = var.project_id
  location                 = var.region
  remove_default_node_pool = var.remove_default_node_pool

  initial_node_count       = var.initial_node_count

  master_auth {
    username = var.username
    password = var.password

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}

/******************************************
  Create Container Node Pool
 *****************************************/

resource "google_container_node_pool" "gs-gke-node-pool" {
  cluster = google_container_cluster.gs-gke-cluster.name
  name    = var.node_pool_name
  location = var.region
  node_count = 1

  node_config {
    preemptible = var.preemptible_value
    machine_type = "n1-standard-1"

    metadata = {
      disable-legacy-endpoints = var.disable_legacy_endpoints
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}