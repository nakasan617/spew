CC=gcc
CFLAGS=-Wall -std=c11
SOURCES=$(wildcard src/*.c)
OBJECTS=$(patsubst src/%.c, src/%.o, $(SOURCES))

main: $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $(OBJECTS)	

debug:
	$(CC) $(CFLAGS) -ggdb -o $@ $(SOURCES)

$(OBJECTS): %.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJECTS) main debug
