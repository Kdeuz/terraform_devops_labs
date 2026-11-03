terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 4.2.0"
    }
  }
}

provider "docker" {
	host = "unix:///var/run/docker.sock"
}
	
resource "docker_image" "build" {
	name	= "fastapi-app:latest"
	
	build{
		context = "${path.cwd}/.."
		dockerfile = "infra/Dockerfile"
	}
}

resource "docker_container" "container" {
	name = "fastapi_container"
	image = docker_image.build.image_id

	ports {
	internal = 8000
	external = 8000
	}
}
