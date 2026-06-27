output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.magento_server.id
}

output "public_ip" {
  description = "Public IP of EC2"
  value       = aws_instance.magento_server.public_ip
}

output "public_dns" {
  description = "Public DNS of EC2"
  value       = aws_instance.magento_server.public_dns
}

output "ssh_command" {
  description = "SSH command to connect to the instance"
  value       = "ssh -i assessment.pem admin@${aws_instance.magento_server.public_dns}"
}
