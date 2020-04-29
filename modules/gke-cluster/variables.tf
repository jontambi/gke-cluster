variable "environment" {}

variable "cluster_name" {
  type        = string
  description = "The cluster name of GKE"
}
variable "project_id" {
  type        = string
  description = "The project ID to host the cluster in (required)"
}

variable "description" {
  type        = string
  description = "The description of the cluster"
  default     = ""
}

variable "network_policy" {
  type        = bool
  description = "Enable network policy addon"
  default     = true
}

variable "region" {
    description = "Location of GKE Cluster"
}

variable "remove_default_node_pool" {
  type        = bool
  description = "Enable remove default node pool"
  default     = true
}

variable "initial_node_count" {
  description = "Number of Node Pool"
}

variable "node_pool_name" {
  description = "The name of Node Pool"
}

variable "preemptible_value" {
  type        = bool
  description = "Preemptible value"
  default     = true
}

variable "disable_legacy_endpoints" {
  type        = bool
  description = "Disable legacy endpoints"
  default     = true
}

variable "username" {
  description = "Master username"
}

variable "password" {
  description = "Master user password"
}