# Multi-Cloud DevOps Project

## Overview
An end-to-end DevOps project deploying a sample web app to AWS and IBM Cloud using:
- Terraform
- Ansible
- GitHub Actions
- Docker
- Prometheus, Grafana, Loki

## Components

### Infrastructure (Terraform)
- `terraform/`: Modular setup for AWS and IBM VMs

### Configuration (Ansible)
- `ansible/`: Installs Docker and app runtime

### App
- Simple Node.js app in `app/` folder

### CI/CD (GitHub Actions)
- Auto-deploy on push via SSH

### Monitoring
- Prometheus + Grafana + Loki setup inside `monitoring/`

## How to Run

### 1. Provision Infrastructure
```bash
cd terraform
terraform init
terraform apply

2. Configure Servers
bash
Copy
Edit
cd ../ansible
ansible-playbook -i inventory.ini playbook.yml
3. Push Code
GitHub Actions will auto-deploy on push to main.

4. Launch Monitoring
bash
Copy
Edit
cd monitoring
docker-compose up -d
Dashboards
Access Grafana: http://localhost:3000

Default credentials: admin/admin

Author
Your Name

Your GitHub profile

yaml
Copy
Edit
