output "iam_user_name" {
  description = "The IAM user for Terraform"
  value = module.backend.iam_user_arn
}

output "s3_bucket_id" {
    description = "The ID of the S3 Bucket"
    value = module.s3_website.s3_bucket_id
    }

output "s3_bucket_arn" {
  description = "The ARN of the S3 Bucket"
  value = module.s3_website.s3_bucket_arn
}

output "website_url" {
  description = "The URL of the Website"
  value = module.s3_website.website_url
}

output "aws_cloudfront_distribution_id" {
  description = "The ID of the CloudFront distribution"
  value = module.cloudfront.aws_cloudfront_distribution_id
}

output "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  value = module.dynamodb_table.dynamodb_table_name.name
}