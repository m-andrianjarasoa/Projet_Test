  
terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.37"   # ou la dernière version stable
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}

resource "hcloud_ssh_key" "default" {
  name       = "my-ssh-key"
  public_key = file(var.ssh_key_path)
}

data "template_file" "cloudinit" {
  template = file("${path.module}/cloud-init.yaml")

  vars = {
    ssh_key = file(var.ssh_key_path)
  }
}

resource "hcloud_server" "web" {
  name        = var.server_name
  image       = "ubuntu-22.04"
  server_type = "cpx11"
  location    = "nbg1"
  ssh_keys    = [hcloud_ssh_key.default.id]
  user_data = file("${path.module}/cloud-init.yaml")
}

