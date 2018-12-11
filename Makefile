EXECUTABLE := ascend

# Where to find user code.		   
SRCDIR:=./

CXX:=g++
# Flags passed to the C++ compiler.
CFLAGS := -g -Wall -Wextra -pthread -std=c++11
CPPFLAGS := $(CFLAGS)

RM-F := rm -f

#compile all cpp files and cc files
CPPSRCS := $(wildcard $(addsuffix /*.cpp, $(SRCDIR))) $(wildcard *.cpp)
CPPOBJS := $(patsubst %.cpp,%.o,$(CPPSRCS))

#list of objs
SRCOBJ := $(wildcard *.o) $(wildcard $(addsuffix /*.o, $(SRCDIR)))

.PHONY :	all deps objs clean veryclean rebuild info

all:	$(EXECUTABLE)
	
objs :	$(CPPOBJS)

clean :
	@$(RM-F) $(EXECUTABLE)
	@$(RM-F) $(SRCOBJ)

# Builds a test.  A test should link with both gtest.so and
# gtest_main.so by googletest-release-1.8.1, please make sure they haved 
# in your system lib.

$(EXECUTABLE) :	$(CPPOBJS)
	$(CXX) $(CPPFLAGS) -o $@ $^

info:
	@echo $(CPPSRCS)
	@echo $(CPPOBJS)
