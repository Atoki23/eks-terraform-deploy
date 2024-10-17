# terraform {
#   required_version = ">=0.12.0"
#   backend "s3" {
#     key            = "infra/terraform.state"
#     bucket         = "dominion-terraform-backend-bucket"
#     region         = "us-west-2"
#     dynamodb_table = "terraform-state-locking"
#   }
# }

terraform {
  backend "s3" {
    bucket         = "atoktech"              # S3 bucket to store state
    key            = "eks/terraform.state" # Path inside the bucket to store the state file
    region         = "eu-west-2"             # Region where the bucket is created
    encrypt        = true                    # Enable encryption for state file
    dynamodb_table = "dynamo_atoktech"       #"terraform-lock-table" # DynamoDB table for state locking
  }
}