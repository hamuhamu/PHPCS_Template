.PHONY: install
PHPCS=vendor/bin/phpcs
PHPCBF=vendor/bin/phpcbf

help:
	cat Makefile

phpcs: $(PHPCS)
	# -s 規約エラー時にエラーのルール名を表示
	$(PHPCS) --colors --encoding=utf8 --standard=phpcs_ruleset.xml -s

phpcbf: $(PHPCBF)
	$(PHPCBF) --standard=phpcs_ruleset.xml
