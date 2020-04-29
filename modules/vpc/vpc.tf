/******************************************
	VPC configuration
 *****************************************/
resource "google_compute_network" "gs-vpc" {
    name                    = "${var.environment}-${var.vpc_name}"
    auto_create_subnetworks = var.auto_create_subnetworks
    routing_mode            = var.routing_mode
    project                 = var.project_id
    description             = var.description
}