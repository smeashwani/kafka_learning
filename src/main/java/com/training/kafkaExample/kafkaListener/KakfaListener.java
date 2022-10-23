package com.training.kafkaExample.kafkaListener;

import org.springframework.context.annotation.Configuration;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.kafka.support.KafkaHeaders;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.Payload;

@Configuration
public class KakfaListener {
	
	@KafkaListener(topics = "${kafka.topic}", groupId = "${kafka.groupId}")
	// @KafkaListener(topics = "topic1, topic2", groupId = "foo")
	public void listenGroupFoo(String message) {
		System.out.println("Received Message in group: " + message);
	}

	@KafkaListener(topics = "${kafka.topic}")
	public void listenWithHeaders(@Payload String message) {
	      System.out.println("Received Message: " + message + " from partition: " + partition);
	}
}
