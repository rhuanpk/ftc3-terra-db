provider "aws" {
  region = "us-east-1"
}

# Obter VPC padrão
data "aws_vpc" "default" {
  default = true
}

# Obter todas as sub-redes da VPC padrão
data "aws_subnets" "default_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# Criar grupo de sub-rede para o RDS
resource "aws_db_subnet_group" "rds_db_subnet_group" {
  name       = "rds-db-subnet-group"
  subnet_ids = slice(data.aws_subnets.default_subnets.ids, 0, 2) # Pega as duas primeiras sub-redes

  tags = {
    Name = "rds-db-subnet-group"
  }
}

# Criar grupo de segurança para o RDS MySQL
resource "aws_security_group" "rds_mysql_sg" {
  vpc_id      = data.aws_vpc.default.id
  name        = "rds-mysql-sg"
  description = "Grupo de seguranca para RDS MySQL"
  
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Criar a instância RDS MySQL
resource "aws_db_instance" "default" {
  identifier         = "mysql-ftc3"
  engine             = "mysql"
  engine_version     = "8.0.35" 
  instance_class     = "db.t3.micro"
  allocated_storage   = 20
  storage_type       = "gp2"
  username           = var.db_username
  password           = var.db_password
  db_name            = var.db_name
  skip_final_snapshot = true
  publicly_accessible = true
  vpc_security_group_ids = [aws_security_group.rds_mysql_sg.id]
  db_subnet_group_name = aws_db_subnet_group.rds_db_subnet_group.name
}
