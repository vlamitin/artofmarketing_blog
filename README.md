---
title: "README"
date: 2022-08-20T13:42:18+04:00
draft: true
---

# Art of marketing blog

A source code for hugo-based [artofmarketing.blog](https://artofmarketing.blog)

## Creating / editing posts

- run in terminal `make dev` to run a blog on a [localhost:1313](http://localhost:1313)
- posts are in /content/posts folder (each post is a folder with a `index.md` file and optional pictures) - edit them
  and see realtime updates here [localhost:1313](http://localhost:1313)
- after editing old or creating new posts, go to terming, stop the local server (`CTRL + C`), and run `make publish` to
  sync updates to [artofmarketing.blog](https://artofmarketing.blog)

## Sync you local folder with github
- run in terminal `make pull` - this will sync your local folder with github
