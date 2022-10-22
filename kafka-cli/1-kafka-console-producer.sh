# Replace "kafka-console-producer.sh"
# by "kafka-console-producer" or "kafka-console-producer.bat" based on your system # (or bin/kafka-console-producer.sh or bin\windows\kafka-console-producer.bat if you didn't setup PATH / Environment variables)

kafka-console-producer.sh

# producing
kproducer --topic firstTopic
> Hello World
>My name is Conduktor
>I love Kafka
>^C  (<- Ctrl + C is used to exit the producer)


# producing with properties
kproducer --topic firstTopic --producer-property acks=all
> some message that is acked
> just for fun
> fun learning!


# producing to a non existing topic
kproducer --topic newTopic
> hello world!

# our new topic only has 1 partition
ktopic --list
ktopic --topic newTopic --describe


# edit config/server.properties or config/kraft/server.properties
# num.partitions=3

# produce against a non existing topic again
kproducer --topic newTopic2
hello again!

# this time our topic has 3 partitions
ktopic --list
ktopic --topic newTopic2 --describe

# overall, please create topics before producing to them!


# produce with keys
kproducer --topic firstTopic --property parse.key=true --property key.separator=:
>example key:example value
>name:Stephane
