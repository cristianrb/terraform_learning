variable filename {
  type        = string
  default     = "sample.txt"
}

# variable content {
#   type        = number
#   default     = 23
# }

# variable content {
#   type        = bool
#   default     = true
# }

# variable content {
#   type        = list(string)
#   default     = ["red", "green", "blue"]
# }

# variable content {
#   type        = tuple([string,bool,number])
#   default     = ["red", true, 23]
# }

variable content {
  type        = map
  default     = {name = "Cristian", age = 28}
}