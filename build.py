#!/usr/bin/env python3

import sys
import shutil

from subprocess import call

original = './build/original/smw.sfc'
patched = './build'
out_path = './build'
out_file = 'smwx.sfc'

c = call


def copy_rom():
    shutil.copy(original, patched)
    print("Original ROM was copied.\n")


def build():
    # command
    command = "asar --include src/include/ src/main.s build/smw.sfc"
    # call asar command
    c(command.split())
    # rename patched rom as 'out_file'
    shutil.move(patched + "/smw.sfc", patched + "/" + out_file)


def main():
    copy_rom()
    print("Assembly started.\n")
    build()
    print("Finished.\n")


main()
sys.exit()
