provider "google" {
  project = "pokemon-430704"
  region  = "asia-northeast1"
}

resource "google_compute_instance" "default" {
  name         = "pokemon-instance"
  machine_type = "e2-micro"
  zone         = "asia-northeast1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
  }
}
