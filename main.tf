module "dev_cluster" {
    source     = "./main"
    env_name   = "dev"
    project_id = "${var.project_id}"
    instance_type = "e2-medium"
    region = var.region
    network = var.network
    ip_range_pods_name      = var.ip_range_pods_name
    ip_range_services_name  = var.ip_range_services_name
    subnetwork=var.subnetwork
    cluster_name = var.cluster_name
}

module "staging_cluster" {
    source     = "./main"
    env_name   = "staging"
    project_id = "${var.project_id}"
    instance_type = "e2-medium"
    region = var.region
    network = var.network
    ip_range_pods_name=var.ip_range_pods_name
    ip_range_services_name=var.ip_range_services_name
    subnetwork=var.subnetwork
    cluster_name = var.cluster_name
}

module "prod_cluster" {
    source     = "./main"
    env_name   = "prod"
    project_id = "${var.project_id}"
    instance_type = "n2-highmem-2"
    region = var.region
    network = var.network
    ip_range_pods_name=var.ip_range_pods_name
    ip_range_services_name=var.ip_range_services_name
    subnetwork=var.subnetwork
    cluster_name = var.cluster_name
}


