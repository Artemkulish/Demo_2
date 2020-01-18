package com.driveUp.pojo;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.driveUp.constants.cars.CarType;
import lombok.Data;
import org.springframework.lang.NonNull;

import javax.validation.constraints.NotBlank;

@Data
public class CreateBill {
    private boolean babySeat;
    private boolean englishDriver;
    private boolean conditioner;
    private boolean pet;
    private boolean courier;
    private boolean nonSmoker;
    private boolean silence;
    private CarType carType;
    @NonNull
    private double distance;
    @NotBlank
    private String paymentMode;

    public CreateBill(@JsonProperty("carType") CarType carType,
                      @JsonProperty("distance") double distance,
                      @JsonProperty("paymentMode") String paymentMode,
                      @JsonProperty("babySeat") boolean babySeat,
                      @JsonProperty("englishDriver") boolean englishDriver,
                      @JsonProperty("conditioner") boolean conditioner,
                      @JsonProperty("pet") boolean pet,
                      @JsonProperty("courier") boolean courier,
                      @JsonProperty("nonSmoker") boolean nonSmoker,
                      @JsonProperty("silence") boolean silence) {
        this.carType = carType;
        this.distance = distance;
        this.paymentMode = paymentMode;
        this.babySeat = babySeat;
        this.englishDriver = englishDriver;
        this.conditioner = conditioner;
        this.pet = pet;
        this.courier = courier;
        this.nonSmoker = nonSmoker;
        this.silence = silence;
    }
}
