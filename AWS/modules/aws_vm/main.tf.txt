resource "aws_instance" "this" {
  ami           = "ami-0c02fb55956c7d316" # Ubuntu (adjust as needed)
  instance_type = var.instance_type

  tags = {
    Name = "aws-devops-vm"
  }
}
