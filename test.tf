resource "aws_instance" "ubuntu" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  key_name = "devops1"

  tags = {
    Name       = "Ushakou-tf-remove"
    Env        = "prod"
    Monitoring = "yes"
  }
}
