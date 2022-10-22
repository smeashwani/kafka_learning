# start one consumer
kconsumer --topic first-topic --group my-first-application

# start one producer and start producing
kproducer --topic first-topic

# start another consumer part of the same group. See messages being spread
kconsumer --topic first-topic --group my-first-application

# start another consumer part of a different group from beginning
kconsumer --topic first-topic --group my-second-application --from-beginning