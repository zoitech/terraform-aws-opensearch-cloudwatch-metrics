variable "alarm_actions" {
  description = "The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  type        = list(string)
  default     = []
}

variable "domain_name" {
  type = string
}

variable "number_of_nodes_in_cluster" {
  type = number
}
