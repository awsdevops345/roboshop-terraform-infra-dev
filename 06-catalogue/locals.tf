locals  {
    name = "${var.project_name}-${var.environment}"
    zone_name = "learnaws.online"
    current_time = formatdate("YYYY-MM-DD-hh-mm", timestamp())
}
