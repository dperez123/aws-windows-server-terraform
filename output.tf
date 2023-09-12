output "public_ip" {
  value = aws_instance.windows.public_ip
}
output "public_dns" {
  value = aws_instance.windows.public_dns
}
#output "windows_password" {
#  value = aws_instance.windows.password_data
#}
output "password_decrypted" {
###modify the next line with your file path###
  value=rsadecrypt(aws_instance.windows.password_data, file("~/.ssh/new_id_rsa") )
}
