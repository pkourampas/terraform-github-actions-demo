resource "aws_s3_bucket" "my-bucket" {
  bucket = var.bucket-name
  force_destroy = true

  tags = {
    Name        = var.bucket-name
    Environment = "Dev"
  }
}

resource "aws_s3_object" "upload_index_file" {
    bucket = var.bucket-name
    key = var.bucket-name
    source = "./uploads/index.html"
}

resource "aws_s3_object" "upload_error_file" {
    bucket = var.bucket-name
    key = var.bucket-name
    source = "./uploads/error.html"
}
