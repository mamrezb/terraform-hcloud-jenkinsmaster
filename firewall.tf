resource "hcloud_firewall" "jenkinsmaster_firewall" {
  name = "jenkinsmaster-firewall"

  rule {
    direction = "in"
    protocol  = "tcp"
    port      = var.ssh_port
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  rule {
    direction = "in"
    protocol  = "tcp"
    port      = var.jenkins_http_port
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
}

resource "hcloud_firewall_attachment" "jenkinsmaster" {
  firewall_id = hcloud_firewall.jenkinsmaster_firewall.id
  server_ids  = [hcloud_server.jenkinsmaster.id]
}
