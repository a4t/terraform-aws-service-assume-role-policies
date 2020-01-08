data "template_file" "policies" {
  count    = length(var.services)
  template = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "${element(var.services, count.index)}.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF

  vars = {
    service_name = element(var.services, count.index)
  }
}
