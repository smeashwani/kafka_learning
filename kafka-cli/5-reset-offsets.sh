# Replace "kafka-consumer-groups" 
# by "kafka-consumer-groups.sh" or "kafka-consumer-groups.bat" based on your system # (or bin/kafka-consumer-groups.sh or bin\windows\kafka-consumer-groups.bat if you didn't setup PATH / Environment variables)

# look at the documentation again
kafka-consumer-groups

# reset the offsets to the beginning of each partition
kcgroups --group my-first-application --reset-offsets --to-earliest

# execute flag is needed
kcgroups --group my-first-application --reset-offsets --to-earliest --execute

# topic flag is also needed
kcgroups --group my-first-application --reset-offsets --to-earliest --execute --topic first-topic

# consume from where the offsets have been reset
kconsumer --topic first-topic --group my-first-application

# describe the group again
kcgroups --describe --group my-first-application

# documentation for more options
kafka-consumer-groups.sh

# shift offsets by 2 (forward) as another strategy
kcgroups --group my-first-application --reset-offsets --shift-by 2 --execute --topic first-topic

# shift offsets by 2 (backward) as another strategy
kcgroups --group my-first-application --reset-offsets --shift-by -2 --execute --topic first-topic

# consume again
kconsumer --topic first-topic --group my-first-application