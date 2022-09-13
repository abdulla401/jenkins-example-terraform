provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "first_bucket" {
  bucket = "abd4012-first-bucket"
}

output "jenkins_terraform" {
  value = "running Terraform from Jenkins"
}