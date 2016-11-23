package de.nordakademie.impl1;

import de.nordakademie.Message;

public class MessageImpl implements Message{

    public MessageImpl(){}


    @Override
    public String getMessage(){
        return "Implementation 1";
    }
}
