terraform {
  cloud {
    organization = "seunfunmi-terraform-beginner-bootcamp"
    workspaces {
      name = "terra-house"
    }
  }
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.25.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

provider "random" {
  # Configuration options
}

# https://registry.terraform.io/providers/hashicorp/random/latest/docs
# Terraform Random provider
resource "random_string" "bucket_name" {
  length           = 40
  special          = false
  upper            = false
}

# https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html
# S3 Bucket naming rules
resource "aws_s3_bucket" "example" {
  bucket = random_string.bucket_name.result
}

output "random_bucket_name_result" {
    value = random_string.bucket_name.result
    
}