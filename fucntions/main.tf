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
  value = element(var.sample1, 1)
}
variable "sample2" {
  default = {
    a = 10
    b = 20
  }
}
#output "sample2" {
 # value = lookup(var.sample2, "a2", "dummy" )
#}

output "sample2" {
  value = lookup(var.sample2, "a1", "dummy" )
}