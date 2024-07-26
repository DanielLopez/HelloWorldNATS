terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}
provider "docker" {}

resource "docker_image" "nats" {
  name         = "nats:latest"
  keep_locally = false
}

resource "docker_container" "nats" {
  name  = var.nats_container_name
  image = docker_image.nats.image_id
  ports {
    internal = 4222
    external = 4222
  }
}