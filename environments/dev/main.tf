provider "google" {
    credentials = file("../../../google-credentials/terraform-admin.json")
    project = var.project_id
    region = var.gcp_region
    zone = var.location
}

module "vpc" {
    source                  = "../../modules/vpc"
    vpc_name                = var.vpc_name
    environment             = terraform.workspace
    auto_create_subnetworks = var.auto_create_subnetworks
    routing_mode            = var.routing_mode
    project_id              = var.project_id
    description             = var.description
}

module "subnetwork" {
    source                 = "../../modules/subnetwork"
    subnet_name            = var.subnet_name
    environment            = terraform.workspace
    project_id             = var.project_id
    network_name           = module.vpc.network_name
    ip_cidr_range          = var.ip_cidr_range
}

module "gke" {
    source = "../../modules/gke-cluster"
    cluster_name           = var.cluster_name
    environment            = terraform.workspace
    project_id             = var.project_id
    region                 = var.gcp_region
    initial_node_count     = var.initial_node_count
    node_pool_name         = var.node_pool_name
    username               = var.username
    password               = var.password
}