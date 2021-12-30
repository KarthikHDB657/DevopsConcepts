terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
 
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  # VERSION IS NOT NEEDED HERE
}

resource "aws_s3_bucket" "my_s3_bucket_1047" {
    bucket = "my-s3-bucket-karthik-1047"
    versioning{
        enabled=true
    }
}

resource "aws_iam_user" "my_iam_user_1047" {
    name = "my_iam_user_kbhd_1047"
    
}

 