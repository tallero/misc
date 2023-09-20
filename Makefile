#
# SPDX-License-Identifier: GPL-3.0-or-later

PREFIX ?= /usr/local
BIN_DIR=$(DESTDIR)$(PREFIX)/bin
DATA_DIR=$(DESTDIR)$(PREFIX)/share

UX_FILES=$(wildcard ux/*)

all:

check: shellcheck 

shellcheck:
	shellcheck -s bash $(UX_FILES)

install: install-ux install-x205ta

install-ux:

	install -vDm 755 ux/ls_by_date "$(BIN_DIR)/ls_by_date"
	install -vDm 755 ux/ls_by_size "$(BIN_DIR)/ls_by_size"

install-x205ta:

	install -vDm 755 x205ta/us "$(DATA_DIR)/X11/xkb/symbols/us"

.PHONY: check install install-ux install-x205ta shellcheck
