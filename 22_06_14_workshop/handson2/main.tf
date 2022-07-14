resource "google_storage_bucket" "cf01" {
  name          = "carsten-via-terraform"
  location      = "EU"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}