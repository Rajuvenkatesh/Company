resource "aws_security_group" "sg" {
  name        = "allow_all"
  description = "Allowing all ports"
  tags = {
    Name = "Allow_all_ports"
  }
}

resource "aws_security_group_rule" "all_ports" {
  security_group_id = aws_security_group.sg.id
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "allow_internet" {
  security_group_id = aws_security_group.sg.id
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}