Gpp = g++
Flags = -g
bin = bin
src = src
Objs = $(bin)/main.o           \
			 $(bin)/Compiler.o       \
       $(bin)/Tree.o           \
			 $(bin)/Tokenize.o       \
			 $(bin)/OutputAndError.o \
       $(bin)/TextConstruct.o  \
       $(bin)/StackTrace.o     \
       $(bin)/Vector.o

out: $(Objs)
	$(Gpp) $(Flags) $(Objs) -o out

$(bin)/main.o: $(src)/main.c
	$(Gpp) -c $(Flags) $(src)/main.c -o $(bin)/main.o

$(bin)/Compiler.o: $(src)/Compiler.c
	$(Gpp) -c $(Flags) $(src)/Compiler.c -o $(bin)/Compiler.o

$(bin)/Tree.o: $(src)/Tree.c
	$(Gpp) -c $(Flags) $(src)/Tree.c -o $(bin)/Tree.o

$(bin)/Tokenize.o: $(src)/Tokenize.c
	$(Gpp) -c $(Flags) $(src)/Tokenize.c -o $(bin)/Tokenize.o

$(bin)/OutputAndError.o: $(src)/OutputAndError.c
	$(Gpp) -c $(Flags) $(src)/OutputAndError.c -o $(bin)/OutputAndError.o

$(bin)/TextConstruct.o: $(src)/TextConstruct.c
	$(Gpp) -c $(Flags) $(src)/TextConstruct.c -o $(bin)/TextConstruct.o

$(bin)/StackTrace.o: $(src)/StackTrace.c
	$(Gpp) -c $(Flags) $(src)/StackTrace.c -o $(bin)/StackTrace.o

$(bin)/Vector.o: $(src)/Vector.c
	$(Gpp) -c $(Flags) $(src)/Vector.c -o $(bin)/Vector.o

.PHONY: init
init:
	mkdir -p $(bin)