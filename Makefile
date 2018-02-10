.PHONY: build

build:
	docker build -t openbrisk/brisk-runtime-php .

run:
	docker run -it \
	-p 8080:8080 \
	openbrisk/brisk-runtime-php