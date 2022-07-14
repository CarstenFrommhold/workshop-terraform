module "cloud-storage" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "3.2.0"
  # insert the 3 required variables here
  names  = ["cf-via-tf-01", "cf-via-tf-02"]
  prefix = "xx"
  project_id = "dd-playground-cfr"
}
