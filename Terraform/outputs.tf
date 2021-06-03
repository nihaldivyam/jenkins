output "Public_IP" {
    value = aws_instance.slave.public_ip 
}
output "Instance_id" {
  description = "IF of EC2 instance"
  value = aws_instance.slave.id
}