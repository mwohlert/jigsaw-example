package de.core;

import de.nordakademie.Message;

import java.util.Iterator;
import java.util.ServiceLoader;

public class Main {
	public static void main(String[] args) {
		System.out.println("--- START ---");
		Iterator<Message> messageIterator = ServiceLoader.load(Message.class).iterator();
		while (messageIterator.hasNext()){
			Message message = messageIterator.next();
			System.out.println(message.getMessage());
		}

		System.out.println("--- END ---");

	}
}
