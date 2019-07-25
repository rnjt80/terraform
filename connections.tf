    #Configure the docker provider
    provider "docker" {
        host = "tcp://127.0.0.1:2376"
    }

    #Create a container
    resource "docker_container" "container1" {
        image   = "${docker_image.ubuntu.latest}"
        name    = "contianer1"
    }

