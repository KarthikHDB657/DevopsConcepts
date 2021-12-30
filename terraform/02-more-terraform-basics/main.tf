variable "I_am_user_prefix" {
  default = "my_iam_1047_user"
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

resource "aws_iam_user" "my_iam_1047_users" {
  count = 2
  name  = "${var.I_am_user_prefix}_${count.index}"
}

output "users_arn" {
  value = aws_iam_user.my_iam_1047_users.*.arn
}