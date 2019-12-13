# alicloud_datahub_topic

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