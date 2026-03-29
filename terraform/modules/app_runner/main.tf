resource "aws_apprunner_service" "this" {
  service_name = "app-${var.project_name}-${var.environment}"

  source_configuration {
    image_repository {
      image_identifier      = var.image_uri
      image_repository_type = "ECR_PUBLIC"
      
      image_configuration {
        port = var.container_port
      }
    }
    auto_deployments_enabled = false
  }

  instance_configuration {
    cpu    = var.cpu
    memory = var.memory
  }

  tags = {
    Name        = "app-${var.project_name}-${var.environment}"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
