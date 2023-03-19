resource google_storage_bucket GCS1 {
    name = "tf-course-bucket-from-terraform-cr"
    location = "EU"
    storage_class = "NEARLINE"

    labels = {
      "env" = "tf_env"
      "dep" = "complience"
    }

    uniform_bucket_level_access = true

    lifecycle_rule {
      condition {
        age = 5
      }
      action {
        type = "SetStorageClass"
        storage_class = "COLDLINE"
      }
    }

    retention_policy {
      retention_period = 86400
    }
}

resource "google_storage_bucket_object" "picture" {
    name = "sample image"
    bucket = google_storage_bucket.GCS1.name
    source = "../../sample_image.jpg"
}