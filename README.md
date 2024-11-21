# JenkinsMaster Terraform Hetzner Module

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE)
[![Terraform](https://img.shields.io/badge/Terraform-%3E%3D1.3.0-blue)](https://www.terraform.io/)

A Terraform module to provision a Hetzner Cloud server with a custom firewall for hosting JenkinsMaster.

## Features

- **Automated Infrastructure:** Creates a Hetzner Cloud server with a custom firewall.
- **Secure by Default:** Automatically configures a firewall to allow only SSH (port 22) and Jenkins (port 8080) traffic.
- **Customizable:** Allows configuration of server type, location, SSH keys, and more.
- **Reusable:** Designed as a modular component for JenkinsMaster infrastructure.

---

## Prerequisites

- **Terraform:** `>= 1.3.0`
- **Hetzner Cloud Token:** A valid API token for your Hetzner Cloud account.
- **SSH Key:** A public SSH key is required for authentication.

---

## Usage

### 1. Clone the Repository

```bash
git clone https://github.com/mamrezb/jenkinsmaster-terraform-hetzner.git
cd jenkinsmaster-terraform-hetzner
```

### 2. Create a `terraform.tfvars` File

Define your variables in a `terraform.tfvars` file. Example:

```hcl
hcloud_token       = "your_hetzner_cloud_token"
ssh_public_key_path = "~/.ssh/id_rsa.pub"
```

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Plan Infrastructure

Preview the changes:

```bash
terraform plan
```

### 5. Apply Configuration

Provision the infrastructure:

```bash
terraform apply
```

---

## Inputs

| Name                  | Description                           | Type     | Default         | Required |
|-----------------------|---------------------------------------|----------|-----------------|----------|
| `hcloud_token`        | Hetzner Cloud API token              | `string` | -               | ✅       |
| `server_name`         | Name of the JenkinsMaster server     | `string` | `jenkinsmaster-server` | ❌ |
| `server_type`         | Type of server to provision          | `string` | `cpx21`         | ❌       |
| `server_image`        | Image for the server                 | `string` | `ubuntu-22.04`  | ❌       |
| `server_location`     | Location for the server              | `string` | `nbg1`          | ❌       |
| `ssh_key_name`        | Name of the SSH key in Hetzner Cloud | `string` | `jenkinsmaster-key` | ❌ |
| `ssh_public_key_path` | Path to your SSH public key          | `string` | `~/.ssh/id_rsa.pub` | ✅ |
| `ssh_port`            | Port for SSH access                  | `number` | `22`            | ❌       |
| `jenkins_http_port`   | Port for Jenkins HTTP access         | `number` | `8080`          | ❌       |

---

## Outputs

| Name             | Description                               |
|------------------|-------------------------------------------|
| `server_ip`      | Public IP address of the JenkinsMaster server |
| `server_name`    | Name of the JenkinsMaster server          |
| `ssh_connection` | SSH connection string                    |

---

## Architecture

- **Server:** A Hetzner Cloud server with a custom firewall.
- **Firewall:** Allows only SSH (22) and Jenkins (8080) traffic.
- **SSH Key Management:** Automatically uses or creates an SSH key for secure access.

---

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

---

## Contributing

Contributions are welcome! Feel free to submit issues, fork the repository, or create pull requests.

---

## Author

Developed by **Mohammadreza Behfar** as part of the JenkinsMaster project.