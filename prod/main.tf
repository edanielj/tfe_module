module "ec2" {
  source         = "../ec2module"
  instance_count = 2
  env            = "prod"
}

module "s3" {
  source       = "../s3module"
  bucket_name  = "tfe-prodbucket-edj14"
  project_name = "Prod"
}