cd ../

docker-compose -p kafka-data-hub -f docker-compose-kafka-cluster.yml up -d
echo "Kafka Cluster is started"
timeout /t 30

docker-compose -p kafka-data-hub -f docker-compose-kafka-stack.yml up -d
echo "Kafka UI is started"