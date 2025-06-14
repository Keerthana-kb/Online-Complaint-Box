provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name
  acl    = "private"
}

output "bucket_arn" {
  value = aws_s3_bucket.example_bucket.arn
}
