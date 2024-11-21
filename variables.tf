variable "hcloud_token" {
  description = "Hetzner Cloud API token"
  type        = string
}

variable "server_name" {
  description = "Name of the JenkinsMaster server"
  type        = string
  default     = "jenkinsmaster-server"
}

variable "server_type" {
  description = "Type of server to provision"
  type        = string
  default     = "cpx21"
}

variable "server_image" {
  description = "Image for the server"
  type        = string
  default     = "ubuntu-22.04"
}

variable "server_location" {
  description = "Location for the server"
  type        = string
  default     = "nbg1"
}

variable "ssh_key_name" {
  description = "Name of the SSH key in Hetzner Cloud"
  type        = string
  default     = "jenkinsmaster-key"
}

variable "ssh_public_key_path" {
  description = "Path to your SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "ssh_port" {
  description = "Port for SSH access"
  type        = number
  default     = 22
}

variable "jenkins_http_port" {
  description = "Port for Jenkins HTTP access"
  type        = number
  default     = 8080
}

