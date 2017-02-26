CXXFLAGS += -Wall -Wextra -Werror -std=c++14 -fno-exceptions
LDFLAGS += -lOpenSLES
PREFIX ?= /usr/local

play-audio: play-audio.cpp

clean:
	rm -f play-audio

install: play-audio
	mkdir -p $(PREFIX)/share/man/man1 $(PREFIX)/bin
	install play-audio $(PREFIX)/bin/play-audio
	install play-audio.1 $(PREFIX)/share/man/man1/play-audio.1

uninstall:
	rm -f $(PREFIX)/bin/play-audio $(PREFIX)/share/man/man1/play-audio.1

.PHONY: clean install uninstall
