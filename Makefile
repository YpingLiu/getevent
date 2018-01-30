#export SDKTARGETSYSROOT=/opt/poky/1.8/sysroots/cortexa7hf-vfp-neon-poky-linux-gnueabi
#export PATH=/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi:$PATH
#CC = arm-poky-linux-gnueabi-gcc  -march=armv7-a -mfloat-abi=hard -mfpu=neon -mtune=cortex-a7 --sysroot=$(SDKTARGETSYSROOT)
CC = ../../rk1108_r02_bak/prebuilts/toolschain/usr/bin/arm-linux-gcc
#CC = gcc

EXEC = getevent
OBJS =  getevent.o 

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS)  $(EXTRA_LIBS)

clean:
	$ rm -f $(EXEC) *.elf *.elf2flt *.gdb *.o *.bak
	

#CFLAGS += -I./inc
#LDLIBS += -L./lib -lmxml_fs

#OBJS2 += src/getevent.c
#all:
#	$(CC) $(OBJS2) -o out/getevent $(CFLAGS) -lpthread

#clean:
#	rm -rf out/car_control

