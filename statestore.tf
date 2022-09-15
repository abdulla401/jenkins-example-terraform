terraform {
  backend "s3" {
    bucket         = "dev-reporting-tstate"
    dynamodb_table = "dev-reporting-terraform-state-lock-dynamo"
    key            = "dev-reporting-terraform.tfstate"
    region         = "eu-west-2"
  }
}
