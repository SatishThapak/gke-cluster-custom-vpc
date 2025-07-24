variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "gke_node_cidr" {
  description = "Primary subnet CIDR for GKE nodes"
  type        = string
}

variable "pods_cidr" {
  description = "Secondary CIDR block for GKE pods"
  type        = string
}

variable "svc_cidr" {
  description = "Secondary CIDR block for GKE services"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "global_ip_name" {
  description = "Optional static IP name for Cloud NAT (if manual NAT IP desired)"
  type        = string
  default     = null
}

variable "nat_router_name" {
  description = "Name for the Cloud NAT router"
  type        = string
}

variable "nat_name" {
  description = "Name for the Cloud NAT"
  type        = string
}
