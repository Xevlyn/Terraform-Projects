terraform {
  backend "s3" {
    bucket  = "vpc-resource-terraform-tfstate"
    key     = "terraform-statefiles/vpc.tfstate"
    region  = "us-east-1"
    profile = "default"
  }
}
