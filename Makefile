############################################################ LICENSE
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Copyright (c) 2026 Devin Teske <dteske@FreeBSD.org>
#
############################################################ IDENT(1)
#
# $Title: framework-keyboard - session glue $
# $Copyright: 2026 Devin Teske. All rights reserved. $
# $FrauBSD: framework-keyboard/Makefile 2026-10-11 09:57:53 -0700 Devin Teske $
#
############################################################ PATHS

# A port passes PREFIX and DESTDIR.
# The Fn and media keys live in bhotkeys-brightness, bhotkeys-audio,
# bhotkeys-media, bhotkeys-airplane, bhotkeys-mirror, and
# bhotkeys-screenshot. The greeter listener is bhotkeys-greeter.

PREFIX?=	/usr/local
SHAREDIR?=	${PREFIX}/share
MANDIR?=	${SHAREDIR}/man/man

############################################################ FILES

MAN=		man/framework-keyboard.7

############################################################ TARGETS

.PHONY: install

install:
	mkdir -p ${DESTDIR}${MANDIR}8
	install -m 644 ${MAN} ${DESTDIR}${MANDIR}8

################################################################################
# END
################################################################################
