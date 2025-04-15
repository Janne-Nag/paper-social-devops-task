# 🌐 Multi-Cloud DevOps Project (AWS + IBM Cloud)

This project demonstrates an end-to-end DevOps pipeline across **AWS** and **IBM Cloud**, using modern tools like **Terraform**, **Ansible**, **GitHub Actions**, and **Prometheus-Grafana-Loki** for monitoring.

---

##  Project Architecture

GitHub → GitHub Actions → AWS & IBM VMs → Dockerized App ↓ ↓ Monitoring Stack ← Prometheus / Grafana / Loki
---

##  1. Infrastructure Setup (Terraform)

- **Provisioning VMs** on:
  -  AWS (EC2)
  -  IBM Cloud (VSI)
- **Modules** defined for each cloud
- **Firewall rules**, networking, and outputs

###  Directory

terraform/ ├── main.tf ├── variables.tf ├── outputs.tf └── modules/ ├── aws_vm/ └── ibm_vm/

### 🧪 Run Terraform

```bash
cd terraform
terraform init
terraform apply

2. Configuration Management (Ansible)
Installs:

Docker

Docker Compose

Optional: Node Exporter

Prepares both VMs to run containerized apps

cd ansible
ansible-playbook -i inventory.ini playbook.yml

3. CI/CD Pipeline (GitHub Actions)
Automatically:

Pulls latest code

Rebuilds Docker containers

Restarts services on both VMs

 Required Secrets
AWS_VM_IP, IBM_VM_IP

AWS_SSH_KEY, IBM_SSH_KEY

4. Monitoring & Logging
Prometheus: metrics

Grafana: dashboards

Loki + Promtail: log aggregation

 Run Stack
cd monitoring
docker-compose up -d



