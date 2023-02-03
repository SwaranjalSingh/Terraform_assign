#string type
variable "varible_1" {
    type = string
  
}
variable "varible_2" {
    type = string
    default = "default from variable 2"
  
}

#list
variable "test_list" {
    type = list(string)
  
}

variable "test_map" {
    type = map(string)

    
}

# variable "test_set" {
#     type = set(string)
  
# }

variable "test_object" {
    type = object({
        filename = string
        content = string

    })
  
}
