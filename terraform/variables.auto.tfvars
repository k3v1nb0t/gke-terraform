credentials           = "gke-terraform-365505-0eae6dde879d.json"
gcp_project_id        = "gke-terraform-365505"
gcp_region            = "us-east1"
mongo_instance_zone   = "us-east1-b"
gke_cluster_name      = "gke-terraform"
gke_availabilty_zones = ["us-east1-b"]
gke_regional          = false
gke_node_pool_name    = "default-node-pool"
gke_service_account   = "gke-terraform@gke-terraform-365505.iam.gserviceaccount.com"
vpc_subnetworks = {
  "gke-ip-range"   = "10.0.0.0/24",
  "mongo-ip-range" = "10.0.1.0/24"
}
vpc_name = "main"
mongo_ssh_key = {
  file = "id_rsa.pub"
  user = "ubuntu"
}
user_data = "mongo-install.sh"
