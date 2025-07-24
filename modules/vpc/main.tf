resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "subnet" {
  name                     = var.subnet_name
  ip_cidr_range            = var.gke_node_cidr
  region                   = var.region
  network                  = google_compute_network.vpc.id
  private_ip_google_access = true

  secondary_ip_range {
    range_name    = "pods-subnet"
    ip_cidr_range = var.pods_cidr
  }

  secondary_ip_range {
    range_name    = "services-subnet"
    ip_cidr_range = var.svc_cidr
  }
}

resource "google_compute_router" "router" {
  name    = var.nat_router_name
  network = google_compute_network.vpc.id
  region  = var.region
}

resource "google_compute_address" "regional_ip" {
  count       = var.global_ip_name != null ? 1 : 0
  name        = var.global_ip_name
  address_type = "EXTERNAL"
  region      = var.region
}

resource "google_compute_router_nat" "nat" {
  name                               = var.nat_name
  router                             = google_compute_router.router.name
  region                             = var.region
  nat_ip_allocate_option             = var.global_ip_name != null ? "MANUAL_ONLY" : "AUTO_ONLY"
  nat_ips                            = var.global_ip_name != null ? [google_compute_address.regional_ip[0].self_link] : []
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}
