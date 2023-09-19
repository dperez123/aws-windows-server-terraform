# output the elastic ip
output "public_ip" {
  value = aws_eip.windows.public_ip
}

# output the public dns
output "public_dns" {
  value = aws_eip.windows.public_dns
}

# output the password decrypted
output "password_decrypted" {
  value=rsadecrypt(aws_instance.windows.password_data, file("~/.ssh/new_id_rsa") )
}