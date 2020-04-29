variable "ip_cidr_range" {
  description = "IP range of subnetwork is being created"
}

variable "environment" {}

variable "network_name" {
  description = "The name of the network where subnets will be created"
}

variable "project_id" {
  description = "The ID of the project where subnets will be created"
}

variable "subnet_name" {
  description = "The name of the sub-network where subnets will be created"
}