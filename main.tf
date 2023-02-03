resource "local_file" "foo" {
  
  filename = "${random_id.random_file.dec}.html"
  content= local.content

}
# resource "local_file" "Trial2" {
#   filename = var.image_id
#   content = "this is second content"
# }
 resource "random_id" "random_file" {
   byte_length = 8
 }

 locals {
   content = "this is my content from local"
 }


resource "local_file" "resc_1" {
  filename = "simple.txt"
  content = var.varible_1
  
}
resource "local_file" "resc_2" {
  filename = "myfiles/simple1.txt"
  content = "${var.varible_2} \n ${var.varible_1}"
  
}

resource "local_file" "resc_3" {
  filename = var.test_list[0]
  content = var.test_list[1]
  
}
resource "local_file" "resc_4" {
  filename = var.test_map["filename"]
  content = var.test_map["content"]
  
}

# resource "local_file" "resc_5" {
#   filename = "anotherfiles/text.txt"
#   content = var.test_set[0]
  
# }

resource "local_file" "resc_6" {
  filename = var.test_object["filename"]
  content = var.test_object["content"]
  
}