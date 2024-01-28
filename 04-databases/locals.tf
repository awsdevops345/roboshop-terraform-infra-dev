locals {
    ec2_name = "${var.project_name}-${var.environment}"
    database_subnet_id = element(split(",", data.aws_ssm_parameter.database_subnet_ids.value), 0)
    zone_name = "learnaws.online"
}

# locals {
#     ec2_name = "${var.project_name}-${var.environment}"
#     private_subnet_id = element(split(",", data.aws_ssm_parameter.private_subnet_ids.value), 0)
# }

# locals {
#     ec2_name = "${var.project_name}-${var.environment}"
#     public_subnet_id = element(split(",", data.aws_ssm_parameter.public_subnet_ids.value), 0)
# }

# locals {
#     zone_name = "learnaws.online"
# }