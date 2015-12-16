# this script runs containers with waiting between runs, so that they have a chance to start.
# To do it right, the containers should wait until their dependencies correctly start, by doing healthchecks, but they don't.
# Example waiting script in other projects here :https://github.com/dominionenterprises/tol-api-php/blob/master/tests/provisioning/set-env.sh
# It's not hard, we just need to either modify the code of these containers, or do a wrapping container.


docker-compose up -d kafka-zookeeper
sleep 10
docker-compose up -d kafka
sleep 10
docker-compose up -d schema-registry
sleep 10
docker-compose up -d rest-proxy
