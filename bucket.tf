data "google_project" "project" {
}

resource "google_storage_bucket" "bucket" {
  name          = "${data.google_project.project.name}-hmac"
  location      = "US"
  storage_class = "STANDARD"

  uniform_bucket_level_access = false
}

resource "google_storage_bucket_access_control" "sa-bucket-acl" {
  bucket = google_storage_bucket.bucket.name
  role   = "READER"
  entity = "user-${google_service_account.sa-for-bucket.email}"
}