provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
resource "aws_s3_bucket" "sree" {
  bucket = "my-tf-test-bucket-sree-s123"
  acl    = "private"


}
