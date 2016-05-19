.PHONY: install
PHPCS=vendor/squizlabs/php_codesniffer/scripts/phpcs
PHPCBF=vendor/squizlabs/php_codesniffer/scripts/phpcbf

help:
	cat Makefile

phpcs: $(PHPCS)
	$(PHPCS) --extensions=php --ignore=*Test.php --colors --encoding=utf8 --standard=PSR2 -sw src

phpcbf: $(PHPCBF)
	$(PHPCBF) src
