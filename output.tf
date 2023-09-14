output "public_ip" {
  value = aws_eip.windows.public_ip
}
output "public_dns" {
  value = aws_eip.windows.public_dns
}
output "password_decrypted" {
## change the path of your key
  value=rsadecrypt(aws_instance.windows.password_data, file("~/.ssh/new_id_rsa") )
}

