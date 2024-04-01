resource "google_service_account" "sa-for-bucket" {
  account_id   = "sa-for-bucket"
  display_name = "Service Account for accessing bucket"
}

# Create the HMAC key for the associated service account
resource "google_storage_hmac_key" "key" {
  service_account_email = google_service_account.sa-for-bucket.email
}


