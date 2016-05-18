.PHONY: install

install:
	curl -o phpcs -sSL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
	curl -o phpcbf -sSL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
	chmod 755 phpcs
	chmod 755 phpcbf
