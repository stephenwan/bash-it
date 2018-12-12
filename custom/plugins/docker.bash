function docker-ps-ports() {
  docker ps --format="table {{.ID}}\\t{{.Names}}\\t{{.Status}}\\t{{.Ports}}"
}

function docker-ps-command() {
  docker ps --format="table {{.ID}}\\t{{.Names}}\\t{{.Status}}\\t{{.Command}}"
}

function docker-ps-image() {
  docker ps --format="table {{.ID}}\\t{{.Names}}\\t{{.Status}}\\t{{.Image}}"
}
