#!/bin/bash

crub=$(curl -u "admin:tonero321**" -s 'http://localhost:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')

#curl -u "admin:tonero321**" -H "$crub" -X POST http://localhost:8080/job/my_first_job/build?delay=0sec

curl -u "admin:tonero321**" -H "$crub" -X POST http://localhost:8080/job/deploy_to_AWS/buildWithParameters?DB_HOST=db_host&DB_NAME=saintdominics&DB_PASSWORD=1234
