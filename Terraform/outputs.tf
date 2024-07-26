output "nats_container_id" {
  description = "The ID of the NATS server container"
  value       = docker_container.nats.id
}

output "nats_container_name" {
  description = "The name of the NATS server container"
  value       = docker_container.nats.name
}
