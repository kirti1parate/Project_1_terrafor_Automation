terraform {
  backend "s3" {
    bucket = "practicalpractical"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}

#Create dynamodb table
resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-state-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "Lock(M)"
  attribute {
    name = "Lock(M)"
    type = "S"
  }
}

