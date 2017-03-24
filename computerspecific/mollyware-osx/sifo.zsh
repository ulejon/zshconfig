# Tag image for production release
function prod() {
  TAG=${2:-latest}
  docker tag docker.tns-sifo.se/$1:${TAG} docker.tns-sifo.se/$1:prod
  docker push docker.tns-sifo.se/$1:prod
}
