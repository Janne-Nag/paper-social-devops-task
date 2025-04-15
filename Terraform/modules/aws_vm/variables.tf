variable "aws_region" {
  default = "us-east-1"
}

variable "aws_instance_type" {
  default = "t2.micro"
}

variable "ibm_region" {
  default = "us-south"
}

variable "ibm_instance_name" {
  default = "ibm-devops-vm"
}

variable "ibm_api_key" {
  description = "IBM Cloud API Key"
}
