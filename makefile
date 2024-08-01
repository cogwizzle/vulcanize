setup   :
	@scripts/setup
install :
	@sudo cp ./dist/vulcanize /usr/local/bin/vulcanize
build   :
	@cp ./src/vulcanize ./dist/vulcanize
clean   :
	@rm -rf ./dist
	@mkdir -p ./dist
runtest :
	@make clean
	@make build
	@make install
	@scripts/test
