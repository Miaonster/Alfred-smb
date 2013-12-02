NAME=smb
VERSION = 0.1.0
ALFREDWORKFLOW_NAME=${NAME}-${VERSION}.alfredworkflow

default:
	mkdir -p ./bin;
	(cd src/; zip -r ../bin/${ALFREDWORKFLOW_NAME} *; )

install:
	open bin/${ALFREDWORKFLOW_NAME}

clean:
	rm -rf bin
