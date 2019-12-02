DAY = 01

.PHONY: run clean

run: build
	docker run -it --rm aoc2019day$(DAY)

build: part* input
	docker build -t aoc2019day$(DAY) .
	touch build

clean:
	docker image rm -f aoc2019day$(DAY)
	rm -f build
