output "dynamodb_table_id" {
  description = "The ID of the DynamoDB table"
  value = aws_dynamodb_table.views_table.id
}