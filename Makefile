docker/build:
	docker build . -t clsquare -f /tools/docker/Dockerfile

docker/doc:
	docker run -it -p 80:80 clsquare /clsquare/tools/docker/serve_doc.sh
