#!/usr/bin/env bash
export FLASK_APP=flaskr
export FLASK_ENV=development

eval ./setup.sh

flask run
