#
# SPDX-License-Identifier: GPL-3.0-or-later

PREFIX ?= /usr/local
BIN_DIR=$(DESTDIR)$(PREFIX)/bin

UX_FILES=$(wildcard ux/*)

all:

check: shellcheck 

shellcheck:
	shellcheck -s bash $(UX_FILES)

install: install-certbot-extra-formats install-ux

install-ux:

	install -vDm 755 ux/ls_by_date "$(BIN_DIR)/ls_by_date"
	install -vDm 755 ux/ls_by_size "$(BIN_DIR)/ls_by_size"

install-certbot-extra-formats:

	install -vDm 755 certbot_extra_formats "$(BIN_DIR)/certbot_extra_formats"

.PHONY: check install install-certbot-extra-formats install-ux shellcheck
