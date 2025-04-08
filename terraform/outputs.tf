output "ec2_public_ip" {
  description = "Public IP address of the Flask app EC2 instance"
  value       = aws_instance.flask_app.public_ip
}

output "ec2_ssh_connection" {
  description = "Command to SSH into the EC2 instance"
  value       = "ssh -i ~/.ssh/my-ssh-key.pem ubuntu@${aws_instance.flask_app.public_ip}"
}

output "rds_endpoint" {
  description = "Endpoint of the MySQL RDS instance"
  value       = aws_db_instance.todo_db.endpoint
}

output "rds_port" {
  description = "Port to connect to the RDS MySQL instance"
  value       = aws_db_instance.todo_db.port
}
