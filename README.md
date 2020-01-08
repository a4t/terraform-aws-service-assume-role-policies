# terraform-aws-service-assume-role-policies

Terraform module to create an AWS Assume Role Policy.



## Usage

```
module "assume_role_policies" {
  source = "git::https://github.com/a4t/terraform-aws-service-assume-role-policies.git?ref=master"
}
```

## Outputs

```
output "lambda" {
  value = jsondecode(module.assume_role_policies.policies.lambda)
}
```

```
Outputs:

lambda = {
  "Statement" = [
    {
      "Action" = "sts:AssumeRole"
      "Effect" = "Allow"
      "Principal" = {
        "Service" = "lambda.amazonaws.com"
      }
    },
  ]
  "Version" = "2012-10-17"
}
```

## Test

```
$ make init
$ make test
```

## Version increment

```
$ make version+   # v0.0.1 -> v0.0.2
$ make version++  # v0.0.1 -> v0.1.0
$ make version+++ # v0.0.1 -> v1.0.0
```

## Release tag

```
$ make release-tag
```
