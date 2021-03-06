resource "aws_elastic_beanstalk_application" "django-project-deploy" {
  name        = "django-project-deploy"
  description = "django-project-deploy"
}

resource "aws_elastic_beanstalk_environment" "django-project-env-deploy" {
  name                = "django-project-env-deploy"
  application         = "${aws_elastic_beanstalk_application.django-project-deploy.name}"
  solution_stack_name = "64bit Amazon Linux 2018.03 v2.20.0 running Multi-container Docker 18.09.9-ce (Generic)"
  wait_for_ready_timeout = "120m"
}