# tf-bucket-hmac

Using terraform, this repository creates:
* A cloud storage bucket with fine-grained access control (non uniform)
* A service account with reader ACL on the bucket
* An hmac key for the service account

Note that the hmac key and secret (sensitive) are printed as output