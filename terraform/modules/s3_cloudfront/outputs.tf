output "aws_cloudfront_distribution_id" {
  description = "The id of the cloud distribution"
  value = aws_cloudfront_distribution.website_distribution.id
}

