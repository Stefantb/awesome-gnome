#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_WM_GNOME = $(PREFIX)/bin/awesome-gnome
PATH_WM_GNOME_DESKTOP = $(PREFIX)/share/applications/awesome-gnome.desktop
PATH_WM_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/awesome-gnome.session
PATH_WM_GNOME_XSESSION = $(PREFIX)/share/xsessions/awesome-gnome.desktop
PATH_GNOME_SESSION_WM = $(PREFIX)/bin/gnome-session-awesome

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/awesome-gnome-xsession.desktop $(PATH_WM_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/awesome-gnome.desktop $(PATH_WM_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/awesome-gnome.session $(PATH_WM_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/awesome-gnome $(PATH_WM_GNOME)
	$(INSTALL) -m0755 -D session/gnome-session-awesome $(PATH_GNOME_SESSION_WM)



uninstall:
	rm -f $(PATH_WM_GNOME)
	rm -f $(PATH_WM_GNOME_DESKTOP)
	rm -f $(PATH_WM_GNOME_SESSION)
	rm -f $(PATH_WM_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_WM)



.PHONY: all install uninstall
