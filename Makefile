.PHONY: install
PHPCS=testing/phpcs
PHPCBF=testing/phpcbf

install:
	curl -o $(PHPCS) -sSL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
	curl -o $(PHPCBF) -sSL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
	chmod 755 $(PHPCS)
	chmod 755 $(PHPCBF)
