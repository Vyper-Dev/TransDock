TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = TransDock

TransDock_FILES = ABCRootListController.m
TransDock_FRAMEWORKS = UIKit
TransDock_PRIVATE_FRAMEWORKS = Preferences
TransDock_INSTALL_PATH = /Library/PreferenceBundles
TransDock_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
