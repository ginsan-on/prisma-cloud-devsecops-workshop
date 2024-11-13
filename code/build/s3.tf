provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "8aa832c2-93ea-4071-8f2d-2d356b8b76c7"
    git_commit           = "cb2a05a13f8bbd17f2a094db42fd55043204d444"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-11-13 17:20:29"
    git_last_modified_by = "65091956+ginsan-on@users.noreply.github.com"
    git_modifiers        = "65091956+ginsan-on"
    git_org              = "ginsan-on"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
