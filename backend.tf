terraform {
  backend "s3" {
    bucket = "practicalpractical"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}
