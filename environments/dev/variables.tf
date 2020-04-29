variable "gcp_region" {
    default = "us-central1"
}

variable "project_id" {
  description = "Google Project ID grandessuperfices-dev"
  type        = string
  default     = "grandesuperficies-dev"
}

variable "location" {
  default = "us-central1-c"
}

variable "vpc_name" {
  default = "gs-vpc"
}

variable "subnet_name" {
  default = "gs-subnetwork"
}

variable "ip_cidr_range" {
  default = "172.16.0.0/16"
}

variable "routing_mode" {
  type        = string
  default     = "REGIONAL"
  description = "The network routing mode (default 'GLOBAL')"
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources."
  default     = false
}

variable "description" {
  type        = string
  description = "An optional description of this resource. The resource must be recreated to modify this field."
  default     = "VPC Proyecto GrandesSuperficies - Kubernetes Cluster"
}

variable "cluster_name" {
  default = "gs-gke-cluster"
}

variable "initial_node_count" {
  default = 1
}

variable "node_pool_name" {
  default = "gs-node-pool"
}

variable "username" {
  default = "admin"
}

variable "password" {
  default = ""
}