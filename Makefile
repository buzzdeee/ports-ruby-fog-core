# $OpenBSD: Makefile,v 1.3 2015/07/01 09:00:38 sebastia Exp $

COMMENT =	Puppet module management

DISTNAME =	fog-core-1.32.0
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/adrienthebo/r10k
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=	textproc/ruby-formatador,${MODRUBY_FLAVOR} \
		textproc/ruby-builder,${MODRUBY_FLAVOR} \
		mail/ruby-mime-types,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR} \
		net/ruby-net-scp,${MODRUBY_FLAVOR} \
		www/ruby-excon,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
