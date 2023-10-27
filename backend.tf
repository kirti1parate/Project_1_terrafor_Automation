terraform {
  backend "s3" {
    bucket = "practicalpractical"
    key = "main"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform_state_lock"
  }

backend "dynamodb" {

    name = "terraform_state_lock"
    hash_key = "LockM"
    
  }

}




