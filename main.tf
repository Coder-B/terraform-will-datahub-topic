provider "alicloud" {
  version              = ">=1.56.0"
  region               = var.region != "" ? var.region : null
  configuration_source = "terraform-will-modules/datahub-topic"
}

#################
# datahub topic
#################
module "topic" {
    source = "./modules/datahub_topic"
    name         = var.name
    project_name = var.project_name
    record_type  = var.record_type
    record_schema = var.record_schema
    shard_count = var.shard_count
    life_cycle  = var.life_cycle
    comment     = var.comment
}