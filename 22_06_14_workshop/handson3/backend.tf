terraform {
  backend "gcs" {
    bucket  = "carsten-via-terraform"
    prefix  = "terraform/state"
  }
}
