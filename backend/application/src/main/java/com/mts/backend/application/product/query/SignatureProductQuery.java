package com.mts.backend.application.product.query;

import lombok.*;
import lombok.experimental.SuperBuilder;

@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
@Data
public class SignatureProductQuery extends AvailableOrderProductQuery {
    private boolean isSignature;
}
