includefrom main.s

reset bytes

org $10A000
    incsrc "Stripe.s"
    incsrc "TitleScene.s"

%module_info(System, 24576)
