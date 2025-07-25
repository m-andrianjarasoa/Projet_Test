  
#mampiasa VirtualBox
provider "vagrant" {
  # rien à configurer, Vagrant utilise VirtualBox automatiquement
}

resource "vagrant_vm" "vm1" {
  name = "vm-terraform-local"
  box  = "ubuntu/bionic64"
  memory = 1024
  cpus   = 1
}

#raha mampiasa docker
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx" {
  name  = "nginx_server"
  image = docker_image.nginx.latest
  ports {
    internal = 80
    external = 8080
  }
}

