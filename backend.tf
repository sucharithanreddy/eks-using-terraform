terraform {
  backend "s3" {
    bucket         = "wm-fleet-tfstate-prod"
    key            = "prod/global.tfstate"
    region         = "us-east-1"
    dynamodb_table = "wm-fleet-tf-lock-prod"
  }
}