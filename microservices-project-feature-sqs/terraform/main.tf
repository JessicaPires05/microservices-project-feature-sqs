terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "jessica-pires-2026-bucket"

  tags = {
    Name = "TerraformBucket"
  }
}