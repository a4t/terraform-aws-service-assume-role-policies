data "template_file" "policies" {
  count    = length(local.services)
  template = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "${element(local.services, count.index)}.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF

  vars = {
    service_name = element(local.services, count.index)
  }
}
