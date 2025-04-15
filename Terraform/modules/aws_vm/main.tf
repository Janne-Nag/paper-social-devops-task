provider "aws" {
  region = var.aws_region
}

provider "ibm" {
  ibmcloud_api_key = var.ibm_api_key
}

module "aws_vm" {
  source      = "./modules/aws_vm"
  instance_type = var.aws_instance_type
  region        = var.aws_region
}

module "ibm_vm" {
  source       = "./modules/ibm_vm"
  instance_name = var.ibm_instance_name
  region        = var.ibm_region
}

