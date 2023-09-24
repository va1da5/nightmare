.PHONY: buid
build:
	docker build -t boi .

.PHONY: run
run:
	docker run -it --rm -p 5000:5000 boi

.PHOYN: clean
clean:
	docker rmi boi