resource "aws_s3_bucket" "examplebucket" {
  bucket = "${var.s3-name}"
  acl    = "private"
}