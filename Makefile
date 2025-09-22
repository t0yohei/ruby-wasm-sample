.PHONY: setup
setup: ## Setup app
	bundle install

.PHONY: build
build: ## Build app
	bundle exec rbwasm build --ruby-version 3.4 -o ruby.wasm

.PHONY: pack
pack: ## Pack app
	bundle exec rbwasm pack ruby.wasm --dir ./src::/src -o my-ruby-app.wasm

.PHONY: serve
serve: ## Serve app
	npx http-server . -o '.' --cors -P 'http://localhost:8080?' -c-1
