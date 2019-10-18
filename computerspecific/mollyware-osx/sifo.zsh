export SAMBERA_STORAGE="=$HOME/Documents/sifo/field-report-storage"
export SAMBERA_PANEL_SQS_PANELLIST_ACTIVITY=https://sqs.eu-west-1.amazonaws.com/569128858329/sqs-panellist-activity-dev-lejonu
export SAMBERA_PANEL_SQS_PANELLIST_TO_TERMINATE=https://sqs.eu-west-1.amazonaws.com/569128858329/sqs-panellist-to-terminate-dev-lejonu
export SAMBERA_PANEL_SQS_IPMS_PANELLIST_PANEL_MEMBERSHIPS=https://sqs.eu-west-1.amazonaws.com/569128858329/sqs-ipms-panellist-panel-memberships-dev-lejonu


# Tag image for production release
function prod() {
  TAG=${2:-latest}
  docker tag docker.tns-sifo.se/$1:${TAG} docker.tns-sifo.se/$1:prod
  docker push docker.tns-sifo.se/$1:prod
}

function runKeycloakDocker() {
  docker run --name keycloak -d -p 8080:8080 -e POSTGRES_PORT_5432_TCP_ADDR=172.17.0.2 -e POSTGRES_PORT_5432_TCP_PORT=5432 -e POSTGRES_PASSWORD=postgres docker.tns-sifo.se/keycloak
}

function runPostgresDocker() {
  docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=postgres -d docker.tns-sifo.se/docker-postgres-development
}
