variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
}

variable "region" {
  description = "GCP region where the cluster and resources will be deployed"
  type        = string
}

variable "network" {
  description = "VPC network ID or name for the GKE cluster"
  type        = string
}

variable "subnetwork" {
  description = "Subnetwork self-link used by the GKE cluster"
  type        = string
}

variable "node_machine_type" {
  description = "Machine type for GKE nodes"
  type        = string
}

variable "node_disk_size_gb" {
  description = "Disk size in GB for each GKE node"
  type        = number
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
}

variable "pods_secondary_range_name" {
  description = "Secondary IP range name for GKE pods"
  type        = string
}

variable "services_secondary_range_name" {
  description = "Secondary IP range name for GKE services"
  type        = string
}

variable "master_ipv4_cidr_block" {
  description = "CIDR block for GKE master private endpoint"
  type        = string
}

variable "enable_private_nodes" {
  description = "Whether to enable private nodes (nodes without public IPs)"
  type        = bool
}

variable "enable_private_endpoint" {
  description = "Whether to enable private endpoint access to the GKE control plane"
  type        = bool
}

variable "master_authorized_networks" {
  description = "List of CIDR blocks allowed to access the GKE master endpoint"
  type = list(object({
    cidr_block   = string
    display_name = string
  }))
}

variable "deletion_protection" {
  description = "Enable or disable deletion protection for the GKE cluster"
  type        = bool
}

variable "db_node_count" {
  description = "Number of nodes in the database cluster"
  type        = number
}

variable "db_node_disk_size_gb" {
  description = "Disk size in GB for each database node"
  type        = number
}

variable "db_node_machine_type" {
  description = "Machine type for database nodes"
  type        = string
}

variable "account_id" {
  description = "Service account ID used to create or reference a GCP service account"
  type        = string
}

variable "service_name" {
  description = "A name used to identify the deployed service or application"
  type        = string
}

variable "roles" {
  description = "List of IAM roles to assign to the service account"
  type        = list(string)
}

variable "service_account_email" {
  description = "Email address of an existing service account to use"
  type        = string
}
