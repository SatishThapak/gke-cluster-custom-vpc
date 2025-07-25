project_id                    = ""
cluster_name                  = ""
vpc_name                      = ""
subnet_name                   = ""
gke_node_cidr                 = ""
pods_cidr                     = ""
svc_cidr                      = ""
region                        = ""
global_ip_name                = ""
nat_router_name               = ""
nat_name                      = ""
pods_secondary_range_name     = ""
node_count                    = 0
node_disk_size_gb             = 0
node_machine_type             = ""
services_secondary_range_name = ""
master_ipv4_cidr_block        = ""
cidr_block                    = ""
display_name                  = ""
db_node_count                 = 0
db_node_disk_size_gb          = 0
db_node_machine_type          = ""

roles = [
  "roles/container.nodeServiceAccount",
  "roles/logging.logWriter",
  "roles/monitoring.metricWriter",
  "roles/compute.viewer",
  "roles/iam.serviceAccountUser"
]

service_account_email = ""
service_name          = ""
account_id            = ""
