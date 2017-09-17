all :
	mkdir -p build/assets/css
	cp index.html build/index.html
	cp -r assets/js build/assets/js
	cp -r assets/fonts build/assets/fonts
	cp -r assets/css/images build/assets/css/images
	cp -r assets/css/font-awesome.min.css build/assets/css/font-awesome.min.css
	cp -r images build/images
	sass assets/sass/main.scss build/assets/css/main.css
	sass assets/sass/noscript.scss build/assets/css/noscript.css
	sass assets/sass/ie8.scss build/assets/css/ie8.css

clean :
	rm -rf build/*
