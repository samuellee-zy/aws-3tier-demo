resource "aws_lb" "three-tier-app-lb" {
  name               = "three-tier-app-lb"
  internal           = true
  load_balancer_type = "application"

  security_groups = [aws_security_group.three-tier-alb-sg-2.id]
  subnets         = [aws_subnet.three-tier-pvt-sub-1.id, aws_subnet.three-tier-pvt-sub-2.id]

  tags = {
    Environment = "three-tier-app-lb"
  }
}

resource "aws_lb_target_group" "three-tier-app-lb-tg" {
  name     = "three-tier-app-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.three-tier-vpc.id

  health_check {
    interval            = 30
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 10
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }
}

resource "aws_lb_listener" "three-tier-app-lb-listner" {
  load_balancer_arn = aws_lb.three-tier-app-lb.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.three-tier-app-lb-tg.arn
  }
}
