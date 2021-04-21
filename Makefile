image=hobochild/toolbox
tag=latest

build:
	docker build -t $(image):$(tag) . 

push:
	docker push $(image):$(tag)

run:
	docker run -it $(image):$(tag) /bin/bash
