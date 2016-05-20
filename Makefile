.PHONY: install
PHPCS=vendor/bin/phpcs
PHPCBF=vendor/bin/phpcbf

help:
	cat Makefile

phpcs: $(PHPCS)
	$(PHPCS) --extensions=php --ignore=*Test.php --colors --encoding=utf8 --standard=PSR2 -sw src

phpcbf: $(PHPCBF)
	$(PHPCBF) src
