output "hmac_access_id" {
  value = google_storage_hmac_key.key.access_id
}

output "hmac_secret" {
  value = nonsensitive(google_storage_hmac_key.key.secret)
}