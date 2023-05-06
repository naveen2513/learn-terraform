
data "aws_security_group" "selected" {
  name = "allow-all"
}
output "aws_security_group" "selected" {
  value = data.aws_security_group.selected.id
}