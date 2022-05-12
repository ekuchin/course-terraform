output "centos_instance_ip_addr" {
  value = "Centos: ${module.centos.instance_ip_addr}"
}

output "ubuntu_instance_ip_addr" {
  value ="Ubuntu: ${module.ubuntu.instance_ip_addr}" 
}