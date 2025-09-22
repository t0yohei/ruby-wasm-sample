.PHONY: pack
pack: ## Pack app
	rbwasm pack ruby.wasm --dir ./src::/src --dir ./ruby-3.4-wasm32-unknown-wasip1-full/usr::/usr -o my-ruby-app.wasm

.PHONY: serve
serve: ## Serve app
	npx http-server . -o '.' --cors -P 'http://localhost:8080?' -c-1
