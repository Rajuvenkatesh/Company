resource "aws_instance" "docker" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.sg.name]
  key_name        = "docker"
  user_data       = file("docker.sh")
  tags = {
    Name         = "Docker"
    Terraform    = "true"
    project_name = "var.project_name"
  }
}