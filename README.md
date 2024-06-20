# aws-generic-recommended-opensearch-cloudwatch-metrics

A Terraform module that creates the best recommended opensearch cloudwatch metrics according to AWS, the source docummentaion is here [Recommended CloudWatch alarms for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cloudwatch-alarms.html)

## Description

This module creates AWS Cloudwatch Metric Alarms and an alarm action in case the alarm is triggered. Right now the alarm action needs to be the same for all metrics.  


### Known Issues
* None so far.


## Usage

```hcl
module "cloudwatch-amazing-name-here" {
  # example
  source                     = "git::https://git.zoi.de/generic/tf-modules/aws-generic-recommended-opensearch-cloudwatch-metrics"
  
  
  alarm_actions = ["lambda-arn"]
  number_of_nodes_in_cluster = 3
}
```

### Referencing a Version Tag

Please refer to [CHANGELOG.md](CHANGELOG.md) for the latest release.

```hcl
module "cloudwatch-amazing-name-here" {
  source = "git::https://git.zoi.de/generic/tf-modules/aws-generic-recommended-opensearch-cloudwatch-metrics.git?ref=1.0.0" 
}
```

For more information on Terraform procedures within ZOI:
[Zoi Terraform Guidelines](https://docs.google.com/document/d/12jQi3rxuwLTHh1aausbAMimVreiweiUFVSLCeof08vM)



## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.automated-snapshot-failure](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.cluster-index-writes-blocked](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.cluster-status-red](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.cluster-status-yellow](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.cpu-utilization](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.free-storage-space](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.jvm-memory-pressure](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.kmskeyerror](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.kmskeyinaccessible](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.master-reachable-from-node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.mastercpuutilization](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.masterjvmmemorypressure](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.masteroldjvmmemorypressure](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.number-of-nodes-in-cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.old-jvm-memory-pressure](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.shardsactive](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.threadpool-search-queue-average](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.threadpool-search-queue-maximum](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.threadpool-search-rejected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.threadpool-write-queue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.threadpool-write-rejected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alarm_actions"></a> [alarm\_actions](#input\_alarm\_actions) | The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN). | `list(string)` | `[]` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | n/a | `string` | n/a | yes |
| <a name="input_number_of_nodes_in_cluster"></a> [number\_of\_nodes\_in\_cluster](#input\_number\_of\_nodes\_in\_cluster) | n/a | `number` | n/a | yes |

## Outputs

No outputs.
