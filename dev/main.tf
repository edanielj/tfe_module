module "ec2" {
  source         = "../ec2module"
  instance_count = 1
  env = "Dev"
}

module "s3" {
  source = "../s3module"
  bucket_name = "tfe-devbucket"
  project_name = "Dev"
}