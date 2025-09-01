terraform {
  backend "s3" {
    bucket         = "tejbackends3"
    key            = "Atlantis/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}