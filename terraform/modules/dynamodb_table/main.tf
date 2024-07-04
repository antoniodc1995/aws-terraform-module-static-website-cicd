# DynamoDB Table for views counter
resource "aws_dynamodb_table" "views_table" {
  name         = var.table_name_views
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "Views"

  attribute {
    name = "Views"
    type = "N"
  }

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name = var.table_name_views
  }
}