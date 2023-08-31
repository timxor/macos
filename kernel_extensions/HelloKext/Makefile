TARGET = HelloKext
OBJS = HelloKext.o

CFLAGS += -Wdeprecated-declarations

all: $(TARGET).kext

$(TARGET).kext: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

clean:
	rm -rf $(TARGET).kext $(OBJS) .$(TARGET).kext
