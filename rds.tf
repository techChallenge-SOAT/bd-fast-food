resource "aws_db_instance" "rds" {
  identifier            = "rds-${var.projectName}"
  db_name                      = var.projectName
  engine                       = "postgres"
  engine_version               = "16.2"
  manage_master_user_password  = true 
  username                     = var.rdsUser
  instance_class               = "db.t3.micro"
  storage_type                 = "gp3"
  allocated_storage            = "10"
  max_allocated_storage        = "20"
  vpc_security_group_ids       = ["${aws_security_group.sg-rds.id}"]
  db_subnet_group_name         = aws_db_subnet_group.subnet-rds.id
  apply_immediately            = true
  skip_final_snapshot          = true
  publicly_accessible          = true
  performance_insights_enabled = true
}
