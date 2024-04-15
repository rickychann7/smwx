includefrom main.s

macro module_info(module_name, space)
  print "[MODULE] ", "<module_name>"
  print "used ", bytes, "/<space> bytes"
endmacro
