includefrom main.s

reset bytes

org $108000
    incsrc "InputManager.s"
    incsrc "MenuManager.s"
    incsrc "World.s"

%module_info(System, 8192)
