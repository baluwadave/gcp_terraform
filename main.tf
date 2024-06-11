provider "google" {
    project ="plenary-hybrid-397707"
    # credentials = file{"scp_cred.json"}
    region ="us-central1"
    zone = "us-central1-a"
}


resource "google_compute_instance" "my_instance" { 
    name = "balu-1"
    machine_type = "f1-micro"
    zone = "us-central1-a"
    allow_stopping_for_update = true  
    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-9"
      }
    }
    network_interface {
      network = "default"
      access_config {
        
      }
    }
}