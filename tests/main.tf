data "template_file" "lambda_policies" {
  template = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

data "template_file" "glue_policies" {
  template = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

module default_test {
  source = "../"
}

output "default_test_lambda" {
  value = jsondecode(module.default_test.policies.lambda) == jsondecode(data.template_file.lambda_policies.rendered) ? "ok" : "failures"
}

output "default_test_glue" {
  value = jsondecode(module.default_test.policies.glue) == jsondecode(data.template_file.glue_policies.rendered) ? "ok" : "failures"
}

module "service_select_test" {
  source = "../"
  services = [
    "glue",
    "s3",
    "lambda"
  ]
}

output "service_select_test_lambda" {
  value = length(module.service_select_test.policies) == 3 ? "ok" : "failures"
}

output "service_select_test_glue" {
  value = jsondecode(module.service_select_test.policies.glue) == jsondecode(data.template_file.glue_policies.rendered) ? "ok" : "failures"
}
