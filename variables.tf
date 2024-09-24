variable "db_username" {
  description = "Nome do usuário do banco de dados"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Senha do banco de dados"
  type        = string
  sensitive   = true
  default     = "admin123"
}

variable "db_name" {
  description = "Nome do banco de dados"
  type        = string
  default     = "db"
}
