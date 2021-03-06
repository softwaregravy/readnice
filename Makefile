
build: components
	@component build --dev

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

test: build
	open test/index.html

server: build
	npm start

.PHONY: build clean test
