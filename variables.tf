variable "region" {
  description = "Region"
  type        = string
  default     = "us-east-1"
}

variable "s3_bucket_name" {
  description = "Name of S3 bucket for backend"
  type        = string
  default     = "ushakou-diplom"
}

variable "state_file_path" {
  description = "Path to statefile"
  type        = string
  default     = "diplom1/state.tfstate"
}

variable "lock_table" {
  description = "Name of tabel for locking"
  type        = string
  default     = "ushakou1"
}


variable "owner" {
  description = "Owner"
  type        = string
  default     = "ushakou"
}
