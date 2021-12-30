terraform {
  backend "s3" {
    bucket = "dev-applications-backend-state-1048-kbhd"
    #key = "07-backend-state-users-dev"
    key            = "dev/07-backend-state/users/backend-state"
    region         = "us-east-1"
    dynamodb_table = "dev_application_locks"
    encrypt        = true
  }
}

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

resource "aws_iam_user" "my_iam_user_1048" {
  name = "${terraform.workspace}_my_iam_user_kbhd_1048"

}

 