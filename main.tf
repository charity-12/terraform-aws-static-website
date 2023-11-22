#create s3 bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = var.bucketname

  
  }
  resource "aws_s3_bucket" "example" {
  bucket = "example"
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.mybucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
resource "aws_s3_bucket" "mybucket.id" {
  bucket = "example"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = False
  block_public_policy     = False
  ignore_public_acls      = False
  restrict_public_buckets = False
}
resource "aws_s3_bucket_acl" "example" {
  depends_on = [aws_s3_bucket_ownership_controls.example]

  bucket = aws_s3_bucket.mybucket.id
  acl    = "private"
}
resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "index.html"
  source = "index.html"
  acl="public_read"
  content_type="text/html"

  resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "error.html"
  source = "error.html"
  acl="public_read"
  content_type="text/html"

  resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.mybucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  depends_on= [aws_s3_bucket_acl.example]
}