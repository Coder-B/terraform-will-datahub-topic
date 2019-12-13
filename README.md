# terraform-will-datahub-topic

This Terraform module will create a topic. The topic is the basic unit of Datahub data source and is used to define one kind of data or stream. It contains a set of subscriptions.

These types of resources are supported:
- [alicloud_datahub_topic](https://www.terraform.io/docs/providers/alicloud/r/datahub_topic.html)

## Usage
you can write these code in you main.tf
```
module "datahub-topic" {
  source  = "Coder-B/datahub-topic/will"
  version = "0.0.2"
  name         = "tf_datahub_topic"
  project_name = "tf_datahub_project"
  record_type  = "BLOB"
  shard_count  = 3
  life_cycle   = 7
  comment      = "created by terraform"
}
```
**key settings**<br>
Setting `access_key` and `secret_key` values through environment variables:

    - ALICLOUD_ACCESS_KEY
    - ALICLOUD_SECRET_KEY


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|name|The name of the datahub topic | string| "" | yes|
|project_name|The name of the datahub project that this topic belongs to| string| "" | yes|
|shard_count|The number of shards this topic contains. The permitted range of values is [1, 10]. The default value is 1 | int| 1 | yes|
|life_cycle|How many days this topic lives. The permitted range of values is [1, 7] | int| 3 | yes|
|record_type| The type of this topic. Its value must be one of {BLOB, TUPLE} | string| "" | yes|
|record_schema| Schema of this topic, required only for TUPLE topic | string| "" | no|
|comment|Comment of the datahub topic | string| "" | no|


## Outputs

| Name | Description |
|------|-------------|
|id|The ID of the datahub topic|
|create_time | Create time of the datahub topic|
|last_modify_time |Last modify time of the datahub topic|