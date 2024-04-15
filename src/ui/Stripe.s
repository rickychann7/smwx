function StripeHeader(layer, x, y) = \
    select(equal(layer,1),$20,select(equal(layer,2),$30,$50))|\
    ((y&$20)>>2)|\
    ((x&$20)>>3)|\
    ((y&$18)>>3)|\
    ((y&$07)<<13)|\
    ((x&$1F)<<8)
