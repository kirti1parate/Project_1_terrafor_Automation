terraform {
  backend "s3" {
    bucket = "practicalpractical"
    key = "main"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform-state-lock"
  }
}

#Create dynamodb table
resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-state-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockM"
  attribute {
    name = "LockM"
    type = "S"
  }
}

