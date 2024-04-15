struct PrimaryController $7E0DA2 ; $0da2 - ac
    .byetHold: skip 2
    .axlrHold: skip 2
    .byetFrame: skip 2
    .axlrFrame: skip 2
    .DisableD1Flag: skip 2
    .DisableD2Flag: skip 1
endstruct

struct SecondaryController $7E0DA3  ; $0da3 - ad
    .byetHold: skip 2
    .axlrHold: skip 2
    .byetFrame: skip 2
    .axlrFrame: skip 2
    .DisableD1Flag: skip 2
    .DisableD2Flag: skip 1
endstruct

macro DisableButton(binary_data1, binary_data2)
    phx
    lda <binary_data1>
    ldx <binary_data2>
    sta PrimaryController.DisableD1Flag
    txa
    sta PrimaryController.DisableD2Flag
    plx
endmacro
