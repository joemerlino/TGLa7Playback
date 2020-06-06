DEBUG = 0

include $(THEOS)/makefiles/common.mk

TARGET = iphone:latest:11.0

TWEAK_NAME = TGLa7Playback

TGLa7Playback_FILES = Tweak.x
TGLa7Playback_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
