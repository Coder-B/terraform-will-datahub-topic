resource "alicloud_datahub_topic" "topic" {
  name         = var.name
  project_name = var.project_name
  record_type  = var.record_type
  record_schema = var.record_schema
  shard_count = var.shard_count
  life_cycle  = var.life_cycle
  comment     = var.comment
}