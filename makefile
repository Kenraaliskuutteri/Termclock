CC = gcc
CFLAGS = -O2
TARGET = termclock
PREFIX = /usr/local/bin

all:
	$(CC) main.c -o $(TARGET)

install: all
	sudo cp $(TARGET) $(PREFIX)/$(TARGET)

uninstall:
	sudo rm -f $(PREFIX)/$(TARGET)
