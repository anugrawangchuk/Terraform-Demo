output "load_balancer_dns_name" {
  description = "The DNS name of the Load Balancer"
  value       = aws_lb.main.dns_name
}

output "target_group_arn" {
  description = "The ARN of the Target Group"
  value       = aws_lb_target_group.tg.arn
}
