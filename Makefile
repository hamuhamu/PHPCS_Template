.PHONY: install
PHPCS=vendor/bin/phpcs
PHPCBF=vendor/bin/phpcbf

help:
	cat Makefile

# コミット対象ファイルをphpcsする
# ACMR Add(追加), Copied(コピー), Modified(修正), Renamed(リネーム)
# phpcs -s 規約エラー時にエラーのルール名を表示
phpcs: $(PHPCS)
	git diff --name-only --diff-filter=ACMR HEAD | \
	grep ".php" | \
	xargs $(PHPCS) --colors --encoding=utf8 --standard=phpcs_ruleset.xml -s

phpcbf: $(PHPCBF)
	git diff --name-only --diff-filter=ACMR HEAD | \
	grep ".php" | \
	xargs $(PHPCBF) --standard=phpcs_ruleset.xml
