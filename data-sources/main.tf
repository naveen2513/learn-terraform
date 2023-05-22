
data "aws_security_group" "selected" {
  name = "allow-all"
}
output "aws_security_group" {
  value = data.aws_security_group.selected
}

data "aws_security_groups" "test" {}
output "all_sq" {
  value = data.aws_security_groups.test
}