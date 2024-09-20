resource "aws_network_acl" "main" {
  vpc_id = var.aws_vpc_id
}
resource "aws_network_acl_rule" "allow_inbound" {
  network_acl_id = aws_network_acl.main.id
  rule_number = 100
  protocol = "tcp"
  action = "allow"
  cidr_block = "0.0.0.0/0"
  from_port = 0
  to_port = 65535
  egress = false  
}

resource "aws_network_acl_rule" "allow_outbound" {
  network_acl_id = aws_network_acl.main.id
  rule_number = 101  
  protocol = "tcp"
  action = "allow"
  cidr_block = "0.0.0.0/0"
  from_port = 0
  to_port = 65535
  egress = true 
}
