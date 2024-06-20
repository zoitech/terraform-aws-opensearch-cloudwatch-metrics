terraform {
  required_version = ">= 0.12" #check and replace minimal version required
  required_providers {
    # aws provider below
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.0.0" #check and replace minimal version required
    }
    # add any additional requird providers below
  }
}
