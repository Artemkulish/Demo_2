package com.driveUp.domain;

public enum OrderType {

    TAXI("TAXI");

    private String type;

    OrderType(String type) {
        this.type = type;
    }
}
