provider "aws" {
  region = "us-east-1"
}

module "app_prod" {
  source       = "../../modules/app_runner"
  project_name = "rocket-app"
  environment  = "prod"
  
  # Specs maiores para Produção
  cpu    = "1 vCPU"
  memory = "2 GB"
  
  image_uri = "public.ecr.aws/aws-containers/hello-app-runner:latest"
}
