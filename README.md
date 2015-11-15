This is a pack of scripts to allow blacklisting clang-failing packages on Gentoo seamlessly. The idea is to update the database by cron and generate the package manager configuration files according to it. The actual database resides in https://github.com/l29ah/gentoo-clang-db

The simplest way to install is to hit:

	emerge gentoo-clang::booboo

It will create a file in /etc/cron.daily that will sync the repo which resides in /etc/portage/gentoo-clang, and generate the configuration file for your $PACKAGE_MANAGER.
