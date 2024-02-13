# bucket = "daws94t-state-dev"
# key    = "catalogue-dev"
# region = "us-east-1"
# dynamodb_table = "daws94t-locking-dev"

terraform {
  backend "s3" {
    bucket = "daws94t-state-dev"
    key    = "catalogue-dev"
    region = "us-east-1"
    dynamodb_table = "daws94t-locking-dev"
  }
}
