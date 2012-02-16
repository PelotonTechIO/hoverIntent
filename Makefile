FOUNDRY_DIR = ../..
PRODUCTION_DIR = ${FOUNDRY_DIR}/scripts
DEVELOPMENT_DIR = ${FOUNDRY_DIR}/scripts_
MODULARIZE = ${FOUNDRY_DIR}/build/modularize
UGLIFY = uglifyjs --unsafe -nc

all: body min

body:
	${MODULARIZE} -n "hoverIntent" jquery.hoverIntent.js > ${DEVELOPMENT_DIR}/hoverIntent.js

min:
	${UGLIFY} ${DEVELOPMENT_DIR}/hoverIntent.js > ${PRODUCTION_DIR}/hoverIntent.js
