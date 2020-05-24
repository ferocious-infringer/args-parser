objects = main.o
output = args-parser

ifeq ($(OS),Windows_NT)
	output := $(output).exe
endif

$(output): $(objects)
	gcc -o $@ $^

$(objects): %.o: %.c %.h
	gcc -c $<

.PHONY: clean
clean:
	rm -f $(objects) $(output)
