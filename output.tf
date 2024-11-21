output "server_ip" {
  description = "Public IP address of the JenkinsMaster server"
  value       = hcloud_server.jenkinsmaster.ipv4_address
}

output "server_name" {
  description = "Name of the JenkinsMaster server"
  value       = hcloud_server.jenkinsmaster.name
}

output "ssh_connection" {
  description = "SSH connection string"
  value       = "ssh root@${hcloud_server.jenkinsmaster.ipv4_address}"
}

