INSTALL?=install
RM?=rm -f
CP?=cp
RMD?=$(RM) -r
PREFIX?=/usr/local
CONF=/etc
BIN=bin
DOCS=/usr/share/doc/mi600_mysql_simple
MANS=man/man1
all:
	@echo "usage:"
	@echo "  sudo make install"
	@echo "  sudo make uninstall"

install:
	$(INSTALL) -d $(PREFIX)/$(MANS)
	$(INSTALL) -m 0755 mi600_mysql_simple $(PREFIX)/$(BIN)
	$(INSTALL) -m 0644 mi600_mysql_simple.conf $(CONF)
	$(INSTALL) -m 0644 README.md $(DOCS)
	$(INSTALL) -m 0644 LICENSE $(DOCS)
	$(INSTALL) -m 0644 $(MANS)/mi600_mysql_simple.1 $(PREFIX)/$(MANS)

uninstall:
	$(RM) $(PREFIX)/$(BIN)/mi600_mysql_simple
	$(RM) $(CONF)/mi600_mysql_simple.conf
	$(RMD) $(DOCS)
	$(RM) $(PREFIX)/$(MANS)/mi600_mysql_simple.1
