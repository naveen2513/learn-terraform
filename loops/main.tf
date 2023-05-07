resource "null_resource" "null" {
  count = 10
}
# null resource nothing to do

resource "null_resource" "fruits" {
  count = length(var.fruits)


  provisinor "local-exec" {
    command = "echo fruit name - ${var.fruits[count.index]}"
  }
}
variable "fruits" {
  default = ["apple","banana","orange"]
}