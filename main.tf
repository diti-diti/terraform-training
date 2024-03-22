# Tworzenie S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = "public-read"  # Ustawienie ACL umssożliwiającego dostęp publiczny
}

# Definicja polityki wiadra
resource "aws_s3_bucket_policy" "my_bucket_policy" {
  bucket = aws_s3_bucket.my_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid       = "PublicRead",
        Effect    = "Allow",
        Principal = "*",