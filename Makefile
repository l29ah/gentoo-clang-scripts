.PHONY: install

DESTDIR=/

install:
	if [ "${PACKAGE_MANAGER}" = paludis ]; then \
		mkdir -p ${DESTDIR}/etc/paludis; \
		install bashrc.clang ${DESTDIR}/etc/paludis/; \
	else \
		mkdir -p ${DESTDIR}/etc/portage/env; \
		install -m 0644 use-default-compiler ${DESTDIR}/etc/portage/env/; \
	fi
	mkdir -p ${DESTDIR}/etc/cron.daily
	install -m 0755 gentoo-clang-blacklist-update ${DESTDIR}/etc/cron.daily/
