terraform {
    backend "s3" {
        bucket = "remote-state-ramon"
        key = "terraform.tfstate"
        region = "us-east-1"
        encrypt = true
        dynamodb_table = "remote-state-lock-table"
    }
}