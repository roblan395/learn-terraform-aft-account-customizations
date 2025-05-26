resource "random_pet" "bucket_name" {
  length    = 2
  separator = "-"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket        = "sandbox-bucket-${random_pet.bucket_name.id}"
  force_destroy = true
}
