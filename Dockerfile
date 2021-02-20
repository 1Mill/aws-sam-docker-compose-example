FROM alpine:3

RUN apk add --no-cache \
	bash \
	build-base \
	gcc \
	py3-pip \
	python3 \
	python3-dev

RUN \
	pip3 install --upgrade pip && \
	pip3 install awscli && \
	pip3 install aws-sam-cli

WORKDIR /app

CMD [ "echo Hello World!" ]
