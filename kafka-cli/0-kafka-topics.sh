ktopic --list 

ktopic --topic first-topic --create

ktopic --topic first-topic --create --partitions 3

ktopic --topic first-topic --create --partitions 3 --replication-factor 2

# Create a topic (working)
ktopic --topic first-topic --create --partitions 3 --replication-factor 1

# List topics
ktopic --list 

# Describe a topic
ktopic --topic first-topic --describe

# Delete a topic 
ktopic --topic first-topic --delete
# (only works if delete.topic.enable=true)