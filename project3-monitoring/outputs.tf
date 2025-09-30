output "sns_topic_arn" {
  value = aws_sns_topic.alert_topic.arn
}

output "subscription_arn" {
  value = aws_sns_topic_subscription.email_sub.arn
}