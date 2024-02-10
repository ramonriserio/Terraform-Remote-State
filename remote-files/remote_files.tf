resource "aws_s3_bucket" "remote_state_bucket" {
    bucket = "remote-state-ramon"
    
    lifecycle {
        prevent_destroy = true
    }
}

resource "aws_dynamodb_table" "remote_state_lock_table" {
    name = "remote-state-lock-table"
    billing_mode = "PROVISIONED"
    read_capacity = 5
    write_capacity = 5
    hash_key = "LockID"
    
    attribute {
        name = "LockID"
        type = "S"
    }
    
    lifecycle {
        prevent_destroy = true
    }
}