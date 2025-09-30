# SNS Topic for Alerts
resource "aws_sns_topic" "alert_topic" {
  name = "ec2-alerts"
}

# Email subscription to SNS
resource "aws_sns_topic_subscription" "email_sub" {
  topic_arn = aws_sns_topic.alert_topic.arn
  protocol  = "email"
  endpoint  = var.alert_email
}

# CloudWatch Alarm for Bastion Host CPU
resource "aws_cloudwatch_metric_alarm" "bastion_cpu_alarm" {
  alarm_name          = "bastion-high-cpu"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 70
  alarm_description   = "Triggers if Bastion Host CPU > 70% for 5 minutes"
  dimensions = {
    InstanceId = "i-0bc3c847412887ed4" 
  }
  alarm_actions = [aws_sns_topic.alert_topic.arn]
}

# CloudWatch Alarm for Private Instance CPU
resource "aws_cloudwatch_metric_alarm" "private_cpu_alarm" {
  alarm_name          = "private-instance-high-cpu"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 70
  alarm_description   = "Triggers if Private Instance CPU > 70% for 5 minutes"
  dimensions = {
    InstanceId = "i-03817611c04b0fdad" 
  }
  alarm_actions = [aws_sns_topic.alert_topic.arn]
}