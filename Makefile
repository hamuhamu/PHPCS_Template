.PHONY: install
PHPCS=testing/phpcs
PHPCBF=testing/phpcbf

help:
	cat Makefile

$(PHPCS):
	curl -o $(PHPCS) -sSL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
	chmod 755 $(PHPCS)

$(PHPCBF):
	curl -o $(PHPCBF) -sSL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
	chmod 755 $(PHPCBF)

phpcs: $(PHPCS)
	$(PHPCS) --extensions=php --ignore=*Test.php src

phpcbf: $(PHPCBF)
	$(PHPCBF) src
