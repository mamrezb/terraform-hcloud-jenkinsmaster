terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.49.0"
    }
  }
  required_version = ">= 1.3.0"
}
