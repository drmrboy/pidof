#Simple makefile to build app

APP=pidof
SRCS=$(APP).c
OBJS=$(SRCS:.c=.o)

all: $(APP)

clean:
	@rm -f $(APP) $(OBJS)

install:
	@cp $(APP) $(DESTDIR)/usr/bin

uninstall:
	@rm -f $(DESTDIR)/usr/bin/$(APP)

$(OBJS): $(SRCS)
	@$(CC) $(CFLAGS) -c -o $@ $^

$(APP): $(OBJS)
	@$(CC) $(LDFLAGS) -o $@ $^
