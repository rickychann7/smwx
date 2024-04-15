include "common.s"

org $05B288
    dw StripeHeader(3,10,17),$1700
    dw $3815,$380E,$3816,$3816,$3822,$38FC,$3811,$380E,$3815,$3819,$380E,$381B ; "LEMMY HELPER"
    dw $FFFF
