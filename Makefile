KERNEL_DIR=../r8712u

obj-m := wiegand-gpio.o
PWD := $(shell pwd)

all: wiegand-gpio.c
	$(MAKE) ARCH=arm CROSS_COMPILE=arm-linux- -C $(KERNEL_DIR) SUBDIRS=$(PWD) modules

clean:
	make -C $(KERNEL_DIR) SUBDIRS=$(PWD) clean
