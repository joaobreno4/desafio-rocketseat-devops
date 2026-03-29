provider "aws" {
  region = "us-east-1"
}

module "app_dev" {
  source       = "../../modules/app_runner"
  project_name = "rocket-app"
  environment  = "dev"
  
  cpu    = "0.25 vCPU"
  memory = "0.5 GB"
  
  image_uri = "public.ecr.aws/aws-containers/hello-app-runner:latest"
}

output "app_runner_url" {
  value = module.app_dev.service_url
}
