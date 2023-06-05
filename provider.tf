provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Maintainer  = "hemancini"
      Environment = var.environment
      Description = "AWS Free Tier"
    }
  }
}

