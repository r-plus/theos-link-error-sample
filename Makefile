export ARCHS = armv7 arm64
export TARGET = iphone:clang:9.2:9.0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = sample
sample_FILES = Tweak.xm
# sample_FRAMEWORKS = JavaScriptCore
sample_CFLAGS = -I WTF -std=gnu++11

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 MobileSafari"
