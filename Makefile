ALFREDWORKFLOW_NAME=smb.alfredworkflow

default:
	mkdir -p ./bin;
	(cd src/; zip -r ../bin/${ALFREDWORKFLOW_NAME} *; )

install:
	open bin/${ALFREDWORKFLOW_NAME}
