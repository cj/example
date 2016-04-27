install:
	npm install
	bundle
run:
	bundle exec thin start --port=3000
