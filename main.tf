provider "hcloud" {
  token = var.hcloud_token
}

resource "hcloud_server" "jenkinsmaster" {
  name        = var.server_name
  server_type = var.server_type
  image       = var.server_image
  location    = var.server_location

  ssh_keys = [var.ssh_key_name]
    
  firewall_ids = [hcloud_firewall.jenkinsmaster_firewall.id]
}
