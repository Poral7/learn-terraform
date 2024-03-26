data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}
output "ami"{
  value = data.aws_ami.example
}


data "aws_instance" "foo" {
  instance_id = "i-0aa362f1fc9d07698"
}
output "instance" {
  value = data.aws_instance.foo.public_ip
}


