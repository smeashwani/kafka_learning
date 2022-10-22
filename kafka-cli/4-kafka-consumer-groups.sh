 # Replace "kafka-consumer-groups.sh" 
# by "kafka-consumer-groups" or "kafka-consumer-groups.bat" based on your system # (or bin/kafka-consumer-groups.sh or bin\windows\kafka-consumer-groups.bat if you didn't setup PATH / Environment variables)

# documentation for the command 
kafka-consumer-groups.sh 

# list consumer groups
kcgroups --list
 
# describe one specific group
kcgroups --describe --group my-second-application

# describe another group
kcgroups --describe --group my-first-application

# start a consumer
kconsumer --topic first-topic --group my-first-application

# describe the group now
kcgroups --describe --group my-first-application

# describe a console consumer group (change the end number)
kcgroups --describe --group console-consumer-10592

# start a console consumer
kconsumer --topic first-topic --group my-first-application

# describe the group again
kcgroups --describe --group my-first-application