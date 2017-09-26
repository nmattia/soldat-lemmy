SHELL:=/usr/bin/env bash
PERCENT := %

all: build/music
	mkdir -p build/assets/css
	cp index.html build/index.html
	cp -r music build/
	cp -r assets/js build/assets/js
	cp -r assets/fonts build/assets/fonts
	cp -r assets/css/images build/assets/css/images
	cp -r assets/css/font-awesome.min.css build/assets/css/font-awesome.min.css
	cp -r images build/images
	sass assets/sass/main.scss build/assets/css/main.css
	sass assets/sass/noscript.scss build/assets/css/noscript.css
	sass assets/sass/ie8.scss build/assets/css/ie8.css

build/music/demo: music/demo
	mkdir -p build/music/demo
	for f in build/music/demo/*.mp3 ; do ffmpeg -y -i "$${f}" "$${f/${PERCENT}mp3/ogg}"; done

clean :
	rm -rf build/*
