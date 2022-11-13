terraform{
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
      }
    }
}

provider "aws" {
    region = "us-west-2"
}

resource "aws_dynamodb_table" "jobs_DB" {
    name      = "jobdb"
    hash_key  = "jobdbid"
    billing_mode = "PAY_PER-REQUEST"


    attribute {
        name = "jobdbid"
        type = "S"
    }

    tags = {
        environment  = "test-dev"
    }
}