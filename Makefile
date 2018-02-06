build:
	docker build -t andreamazzoni/pentaho-ce:latest .
	docker image prune -f

run:
	docker run --rm -it --name pentaho-ce \
	-p 8080:8080 \
	andreamazzoni/pentaho-ce:latest
