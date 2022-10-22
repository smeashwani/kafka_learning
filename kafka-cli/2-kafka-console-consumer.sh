# Replace "kafka-console-consumer.sh"
# by "kafka-console-consumer" or "kafka-console-consumer.bat" based on your system # (or bin/kafka-console-consumer.sh or bin\windows\kafka-console-consumer.bat if you didn't setup PATH / Environment variables)

kafka-console-consumer.sh

# consuming
kconsumer --topic firstTopic

# other terminal
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic firstTopic

# consuming from beginning
kconsumer --topic firstTopic --from-beginning

# display key, values and timestamp in consumer
kafka-console-consumer --bootstrap-server localhost:9092 --topic firstTopic --formatter kafka.tools.DefaultMessageFormatter --property print.timestamp=true --property print.key=true --property print.value=true --from-beginning
