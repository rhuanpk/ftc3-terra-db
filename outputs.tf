output "endpoint" {
  description = "Endpoint da instância RDS"
  value       = aws_db_instance.default.endpoint
}
