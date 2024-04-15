incsrc "common.s"

warnings disable Woptimization_settings
warnings disable Wmissing_org

math pri on

System:
    incsrc "system/System.s" ; $108000
UI:
    incsrc "ui/UI.s" ; $10A000
