# Start a container
resource "docker_container" "jenkins" {
  name = "jenkins_tf_server"
  image = "${docker_image.jenkins.latest}"
  command = ["docker run -p 8080:8080 -p 50000:50000 -v /jenkins:/var/jenkins_home -d jenkins"]
}

# Find the latest Ubuntu precise image.
resource "docker_image" "jenkins" {
  name = "jenkins"
}