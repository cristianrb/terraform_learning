resource google_compute_instance vm-from-tf {
  name = "vm-from-tf"
  zone = "europe-west1-b"
  machine_type = "n1-standard-2"
  allow_stopping_for_update = true

  network_interface {
    network = "auto-vpc-tf"
    subnetwork = "auto-vpc-tf"
  }

  boot_disk {
    initialize_params {
      image = "debian-9-stretch-v20210916"
      size = 20
    }
  }

  labels = {
    "env" = "tflearning"
  }

  # scheduling {
  #   preemptible = true
  #   automatic_restart = false
  # }

  service_account {
    email = "terraform-gcp@terraform-gcp-379707.iam.gserviceaccount.com"
    scopes = [ "cloud-platform" ]
  }

  lifecycle {
    ignore_changes = [
      attached_disk
    ]
  }

}

resource google_compute_disk disk-1 {
  name = "disk-1"
  size = 15
  zone = "europe-west1-b"
  type = "pd-ssd"
}

resource "google_compute_attached_disk" "adisk" {
  disk = google_compute_disk.disk-1.id
  instance = google_compute_instance.vm-from-tf.id
}