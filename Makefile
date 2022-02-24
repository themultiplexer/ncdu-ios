TARGET := iphone:clang:latest:7.0
ARCHS := arm64

include $(THEOS)/makefiles/common.mk

TOOL_NAME = ncdu
OBJEXT = c
ncdu_FILES = src/browser.$(OBJEXT) src/delete.$(OBJEXT) \
	src/dirlist.$(OBJEXT) src/dir_common.$(OBJEXT) \
	src/dir_export.$(OBJEXT) src/dir_import.$(OBJEXT) \
	src/dir_mem.$(OBJEXT) src/dir_scan.$(OBJEXT) \
	src/exclude.$(OBJEXT) src/help.$(OBJEXT) src/shell.$(OBJEXT) \
	src/quit.$(OBJEXT) src/main.$(OBJEXT) src/path.$(OBJEXT) \
	src/util.$(OBJEXT)
ncdu_CFLAGS = -fobjc-arc -I. -I ./deps/ -I/usr/include/ncursesw/
ncdu_LIBRARIES = ncurses
ncdu_CODESIGN_FLAGS = -Sentitlements.plist
ncdu_INSTALL_PATH = /usr/local/bin

include $(THEOS)/makefiles/tool.mk
