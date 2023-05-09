

resource "null_resource" "fruits" {
  for_each = var.fruits


  provisioner "local-exec" {
  command ="echo first name - ${each.key} - ${each.value}"
    #command = "echo fruit name - ${var.fruits[count.index]}"
 }
}
variable "fruits" {
  default = {
    apple=10
    banana=100
    graps=200
    mango=300
  }
}