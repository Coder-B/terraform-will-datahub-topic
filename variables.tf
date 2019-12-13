variable "name" {
  description = "The name of the datahub topic. "
  default     = ""
}

variable "project_name" {
  description = "The name of the datahub project that this topic belongs to. "
  default     = ""
}

variable "shard_count" {
  description = "The number of shards this topic contains. "
  default     = 1
}

variable "life_cycle" {
  description = "How many days this topic lives. "
  default     = 3
}

variable "record_type" {
  description = "The type of this topic. "
  default     = "TUPLE" 
}

variable "record_schema" {
  description = "Schema of this topic, required only for TUPLE topic."
  type        = map(string)
  default     = {}
}

variable "comment" {
  description = "Comment of the datahub topic. "
  default     = ""
}

variable "region" {
  description = "The region used to launch this module resources."
  default     = ""
}