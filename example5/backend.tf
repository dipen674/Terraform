terraform {
  backend "s3" {
    bucket = "backend-bucket-dipendra-bhatta"
    #path in the s3 bucket where you want to store
    key    = "terraform"
    region = "us-east-1"
  }
}
