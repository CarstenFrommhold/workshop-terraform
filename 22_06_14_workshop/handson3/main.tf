locals {
  cf01 = "to_be_uploaded/cf01.txt"
  cf02 = "to_be_uploaded/cf02.txt"
}

resource "google_storage_bucket" "cf01" {
  name          = "carsten-via-terraform-2"
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

resource "google_storage_bucket_object" "first_text" {

  name   = "cf01.txt"
  source = "to_be_uploaded/cf01.txt"
  bucket = google_storage_bucket.cf01.name

#  dynamic "setting" {
#    for_each = locals
#    content {
#      name   = locals.key
#      source = locals.value
#    }
#  }
}
