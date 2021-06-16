
module "s3-bucket" {
  source  = "app.terraform.io/yj-training/s3-bucket/aws"
  version = "2.2.0"
  # insert required variables here


  bucket = "s3-tf-example-versioning"
  acl    = "private"

  versioning_inputs = [
    {
      enabled = true
      mfa_delete = null
    },
  ]
}
>>>>>>> a32e61a6ad2f6630e0bfeaf84e69fe678c26646d
