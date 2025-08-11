variable "hcloud_token" {
  description = "Le token API Hetzner pour s'authentifier"
  type        = string
  sensitive   = true
}

variable "server_name" {
  description = "Nom du serveur Hetzner"
  type        = string
  default     = "web-server"
}

variable "ssh_key_path" {
  type = string
  default = "~/.ssh/id_ed25519.pub"
}