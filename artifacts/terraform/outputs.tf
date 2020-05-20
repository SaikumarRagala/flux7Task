output "url-jenkins" {
  value = "http://${aws_instance.jenkins-ci.0.public_ip}:8080"
}

