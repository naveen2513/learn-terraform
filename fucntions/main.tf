#convert lower case to upper case
variable "sample" {
  default = "abc"
}
output "sample" {
  value = upper(var.sample)
}