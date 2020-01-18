package com.driveUp.request;

import com.driveUp.domain.PaymentType;
import lombok.Data;


import java.math.BigDecimal;

@Data
public class BillingDetailsToView {
    private BigDecimal price;
    private PaymentType paymentType;
}
