provider "heroku" {
  version = "~> 2.1.2"
}

variable "example_app_name" {
  description = "Make app test"
}

resource "heroku_app" "test" {
  name = "${var.example_app_name}"
  region = "us"
}

resource "heroku_build" "test" {
  app = "${heroku_app.test.name}"
  buildpacks = [
    "https://github.com/heroku/heroku-buildpack-python.git",
  ]

  source = {
    url = "https://github.com/jgdsfilho/cpnatal19/archive/v1.0.tar.gz"
    version = "1.0"
  }
}

# Launch the app's web process by scaling-up
resource "heroku_formation" "test" {
  app        = "${heroku_app.test.name}"
  type       = "web"
  quantity   = 1
  size       = "Standard-1x"
  depends_on = ["heroku_build.test"]
}

output "test_app_url" {
  value = "https://${heroku_app.test.name}.herokuapp.com"
}
