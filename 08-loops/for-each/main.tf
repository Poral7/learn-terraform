resource "aws_instance" "web" {
  for_each      = var.components
  ami           = data.aws_ami.centos8.id
  instance_type = each.value.instance_type

  tags = {
    Name = each.value["name"]
  }
}

data "aws_ami" "centos8" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

output "public_ip" {
  #without count
  #  value = aws_instance.web.public_ip

  #  with count
  value = {
    for k, v in aws_instance.web : k => v.public_ip
  }
}

variable "components" {
  default = {
    cart = {
      name           = "cart",
      instance_type  = "t3.small"
    }
    catalogue = {
      name           = "catalogue",
      instance_type  = "t3.micro"
    }
  }
}
