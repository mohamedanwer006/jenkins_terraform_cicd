terraform {
    backend "s3" {
      # access_key = var.access_key
      # secret_key = var.secret_key
      bucket         = "test-tf-statefiill"
      region         = "us-east-1"
      key            = "terraform.tfstate"
      dynamodb_table = "iti-terrafrom-LockID"
    }
  required_providers {
    aws = "~> 3.0"

  }

}


provider "aws" {
  region = "us-east-1"
  # access_key = var.access_key
  # secret_key = var.secret_key
    # shared_credentials_file = "credentials"
    # profile                 = "mohamedanwer006"/  
}
