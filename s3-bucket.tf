
module "s3-bucket" {
  source  = "app.terraform.io/yj-training/s3-bucket/aws"
  version = "2.2.0"
  # insert required variables here
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
