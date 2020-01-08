module test {
  source = "../"
}

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

output "lambda" {
  value = jsondecode(module.test.policies.lambda) == jsondecode(data.template_file.lambda_policies.rendered) ? "ok" : "failures"
}

output "glue" {
  value = jsondecode(module.test.policies.lambda) == jsondecode(data.template_file.lambda_policies.rendered) ? "ok" : "failures"
}
