# defining the backend configuration

terraform {
  backend "s3" {
    bucket                  = "terraform-state-bucket-adc1995"
    key                     = "website/terraform.tfstate"
    region                  = "eu-central-1"
    dynamodb_table          = "terraform_state_locks"
  }
}