#!/bin/bash -e

aws cloudformation validate-template \
--template-body file://template.yaml

aws cloudformation deploy \
--stack-name <stack-name> \
--template-file template.yaml \
--parameter-overrides $(cat parameters.properties)