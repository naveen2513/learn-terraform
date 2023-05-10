#convert lower case to upper case
variable "sample" {
  default = "abc"
}
output "sample" {
  value = upper(var.sample)
}

variable "sample1" {
  default = ["abc", "efg"]
}

output "sample1" {
  value = element("var.sample1", 1)
}