output "bucket-name" {
    value = var.bucket-name
}

output "region" {
    value = var.region
}

output "s3-folder" {
    value = aws_s3_object.folder.id
}
