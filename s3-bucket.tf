module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "s3-tf-example-versioning"
  acl    = "private"

  versioning_inputs = [
    {
      enabled = true
      mfa_delete = null
    },
  ]
}
