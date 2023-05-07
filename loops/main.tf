resource "null_resource" "null" {
  count = 10
}
# null resource nothing to do

resource "null_resource" "fruits" {
  count = length(var.fruits)

}

variable "fruits" {
  default = ["apple","banana","orange"]
}