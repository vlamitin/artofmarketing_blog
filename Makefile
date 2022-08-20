.SILENT: deploy
.PHONY: deploy
deploy:
	ssh london "cd artofmarketing_blog && git fetch && git rebase origin/master && rm -r /var/www/html/* && cp -r public/* /var/www/html/ && echo 'deployed'!"

.SILENT: push
.PHONY: push
push:
	yes | cp README.md content/readme/index.md && hugo && git add . && git commit -m "update" && git push origin master

.SILENT: dev
.PHONY: dev
dev:
	hugo server

.SILENT: pull
.PHONY: pull
pull:
	git fetch && git rebase origin/master

.SILENT: publish
.PHONY: publish
publish: push deploy
