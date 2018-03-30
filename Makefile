include $(THEOS)/makefiles/common.mk

TOOL_NAME = postinst
postinst_FILES = main.mm
postinst_ARCHS = arm64
export ARCHS = armv64
postinst_LIBRARIES = MobileGestalt
postinst_FRAMEWORKS = Security
postinst_CODESIGN_FLAGS="-Sen.plist"
postinst_LDFLAGS = -lz -lcurl

include $(THEOS_MAKE_PATH)/tool.mk
