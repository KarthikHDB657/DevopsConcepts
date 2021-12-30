output "my_s3_bucket_1047_versioning" {
     value=aws_s3_bucket.my_s3_bucket_1047.versioning[0].enabled
 }
 output "my_s3_bucket_1047_complete_details" {
     value=aws_s3_bucket.my_s3_bucket_1047
 }

 output "my_iam_user_1047_complete_details" {
     value=aws_iam_user.my_iam_user_1047
 }