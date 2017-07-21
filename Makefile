build:
	docker build -t thumberd .

run:
	docker run -p 8000:8000 thumberd
