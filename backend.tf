terraform {
  backend "s3" {
    bucket = "practicalpractical"
    key = "tarraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "my-dynamodb-table"
  }

}




