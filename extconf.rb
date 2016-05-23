require 'mkmf'
system('swig -c++ -ruby example.i') or abort
$CXXFLAGS += " -std=c++11 "
create_makefile('example')