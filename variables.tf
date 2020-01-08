# https://gist.github.com/shortjared/4c1e3fe52bdfa47522cfe5b41e5d6f22
# ignore: alexa-appkit, codedeploy.${AWS::Region}

variable "services" {
  default = [
    "acm",
    "apigateway",
    "application-autoscaling",
    "appstream.application-autoscaling",
    "appsync",
    "athena",
    "autoscaling",
    "batch",
    "channels.lex",
    "cloud9",
    "clouddirectory",
    "cloudformation",
    "cloudfront",
    "cloudsearch",
    "cloudtrail",
    "codebuild",
    "codecommit",
    "codedeploy",
    "codepipeline",
    "config",
    "continuousexport.discovery",
    "custom-resource.application-autoscaling",
    "datapipeline",
    "dax",
    "deeplens",
    "directconnect",
    "dlm",
    "dms",
    "ds",
    "dynamodb",
    "dynamodb.application-autoscaling",
    "ec2",
    "ec2.application-autoscaling",
    "ec2fleet",
    "ec2scheduled",
    "ecr",
    "ecs-tasks",
    "ecs",
    "ecs.application-autoscaling",
    "edgelambda",
    "eks",
    "elasticache",
    "elasticbeanstalk",
    "elasticfilesystem",
    "elasticloadbalancing",
    "elasticmapreduce",
    "elastictranscoder",
    "es",
    "events",
    "firehose",
    "glue",
    "greengrass",
    "guardduty",
    "health",
    "iam",
    "inspector",
    "iot",
    "kinesis",
    "kinesisanalytics",
    "kms",
    "lambda",
    "lex",
    "lightsail",
    "logs",
    "machinelearning",
    "macie",
    "mediaconvert",
    "monitoring",
    "monitoring.rds",
    "opsworks",
    "organizations",
    "rds",
    "redshift",
    "rekognition",
    "replication.dynamodb",
    "route53",
    "s3",
    "sagemaker",
    "secretsmanager",
    "servicecatalog",
    "ses",
    "signin",
    "sms",
    "sns",
    "spotfleet",
    "sqs",
    "ssm",
    "sso",
    "states",
    "storagegateway",
    "sts",
    "support",
    "swf",
    "trustedadvisor",
    "vmie",
    "waf",
    "workdocs",
    "workspaces"
  ]
}
