# S3 Bucket

resource "aws_s3_bucket" "my-bucket" {
  bucket = "${var.my-env}-my-bucket-126478"
  tags = {
    Name = "${var.my-env}-my-bucket-126478"
    environment = "${var.my-env}"

  }

}