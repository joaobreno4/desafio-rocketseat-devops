variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "image_uri" {
  type = string
}

variable "container_port" {
  type    = string
  default = "8080"
}

variable "cpu" {
  type = string
}

variable "memory" {
  type = string
}
