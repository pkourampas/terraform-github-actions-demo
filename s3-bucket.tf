# Creates a S3 bucket
resource "aws_s3_bucket" "my-bucket" {
  bucket = var.bucket-name
  force_destroy = true

  tags = {
    Name        = var.bucket-name
    Environment = "Dev"
  }
}

# Creates a folder
resource "aws_s3_object" "folder" {
  bucket = aws_s3_bucket.my-bucket.id
  key = "directory/"
  source = "/dev/null"
}

resource "aws_s3_object" "upload-files" {
  bucket = aws_s3_bucket.my-bucket.id

  for_each = fileset("./uploads", "*")
  key = "${aws_s3_object.folder.key}/${each.value}" 
  source = "./uploads/${each.value}"
}
