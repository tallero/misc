#
# SPDX-License-Identifier: GPL-3.0-or-later

PREFIX ?= /usr/local
BIN_DIR=$(DESTDIR)$(PREFIX)/bin

UX_FILES=$(wildcard ux/*)

all:

check: shellcheck

shellcheck:
	shellcheck -s bash $(UX_FILES)

install: install-ux install-doc

install-ux:
        install -vDm 755 ux/ls_by_date "$(BIN_DIR)/ls_by_date"
        install -vDm 755 ux/ls_by_size "$(BIN_DIR)/ls_by_size"

.PHONY: check install install-ux shellcheck
