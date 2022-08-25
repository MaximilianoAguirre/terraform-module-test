terraform {
  required_version = "~> 1.0.0"
}

provider "aws" {
  region  = var.region
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.name

  versioning {
    enabled = true
  }
}
