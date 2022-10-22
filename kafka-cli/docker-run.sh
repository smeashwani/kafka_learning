#Open kafka container and #Create Alias
docker exec -it kafka /bin/bash
alias ktopic="./opt/bitnami/kafka/bin/kafka-topics.sh --bootstrap-server localhost:29092"
alias kproducer="./opt/bitnami/kafka/bin/kafka-console-producer.sh --bootstrap-server localhost:29092"
alias kconsumer="./opt/bitnami/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:29092"
alias kcgroups="./opt/bitnami/kafka/bin/kafka-consumer-groups.sh --bootstrap-server localhost:29092"

