data "hcloud_ssh_keys" "all_keys" {}

resource "hcloud_ssh_key" "jenkinsmaster_key" {
  name       = "jenkinsmaster-key"
  public_key = file(var.ssh_public_key_path)
}
