module "network" {
  source  = "app.terraform.io/matej-training/network/google"
  version = "~> 2.3"
  network_name = "matej-network"
  project_id = var.project

  subnets = [
  {
    subnet_name   = "matej-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}