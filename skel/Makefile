DAY = 

.PHONY: run clean

run: build
	docker run -it --rm aoc2019day$(DAY)

build: part* input
	docker build -t aoc2019day$(DAY) .
	touch build

clean:
	rm -f build
