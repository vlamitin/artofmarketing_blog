.SILENT: deploy
.PHONY: deploy
deploy:
	ssh london "cd artofmarketing_blog && git fetch && git rebase origin/master && rm -r /var/www/html/* && cp -r public/* /var/www/html/ && echo 'deployed'!"

.SILENT: commitpush
.PHONY: commitpush
commitpush:
	hugo -D && git add . && git commit -m "update" && git push origin master

.SILENT: dev
.PHONY: dev
dev:
	hugo server -D
