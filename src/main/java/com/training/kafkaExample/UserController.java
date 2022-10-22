package com.training.kafkaExample;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.training.kafkaExample.service.KafkaService;

@RestController
public class UserController {

	@Autowired
	KafkaService kafkaService;
	
	@GetMapping("/send/{msg}")
	public ResponseEntity<String> sendMessage(@PathVariable("msg") String  msg) throws Exception {
		kafkaService.sendMessage(msg);
		return ResponseEntity.of(Optional.of("Send msg ="+msg));
	}
	
	@GetMapping("/sendAndConfirm/{msg}")
	public ResponseEntity<String> sendAndConfirm(@PathVariable("msg") String  msg) throws Exception {
		kafkaService.sendMessageWithCallback(msg);
		return ResponseEntity.of(Optional.of("Send msg ="+msg));
	}
}
