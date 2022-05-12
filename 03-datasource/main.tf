data "openstack_images_image_v2" "centos" {
  name = "CentOS-7.9-202107"
  
  properties = {
    key = "value"
  }
}

data "openstack_images_image_ids_v2" "images" {
  name_regex = "^Fedora*"
  sort       = "updated_at"
}

output "centos_name" {
  value = data.openstack_images_image_v2.centos.name
}


output "centos_id" {
  value = data.openstack_images_image_v2.centos.id
}

output "centos_owner" {
  value = data.openstack_images_image_v2.centos.owner
}

output "centos_list" {
  value = data.openstack_images_image_ids_v2.images
}