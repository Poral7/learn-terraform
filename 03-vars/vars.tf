variable "sample" {
  default = 10
}

output "sample" {
  value = var.sample
}

# string data type

variable "sample1" {
  default = "Hello World"
}

# number data type

variable "sample2" {
  default = 100
}

# boolean data type

variable "sample3" {
  default = true
}

# default variable type

variable "sample4" {
  default = 100
}
output "sample4" {
  value = var.sample4
}

#list variable type
variable "sample5"{
  default = [
    100,
    "abc",
    "xyz"
  ]
}
output "sample5" {
  value = var.sample5[1]
}
#map variable type
variable "sample6" {
  default = {
    number = 100
    string = "xyz"
    boolean = false
  }
}

output "sample6" {
  value = var.sample6["number"]
}

## variable from tfvars
variable "demo1" {

}
output "demo1" {
  value = var.demo1
}
