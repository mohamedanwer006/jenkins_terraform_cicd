terraform {
    backend "s3" {
      shared_credentials_file = "credentials"
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
    shared_credentials_file = "credentials"
    # profile                 = "mohamedanwer006"/  
}
