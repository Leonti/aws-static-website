#!/bin/bash -e

npm run build

aws s3 sync --delete --acl "public-read" build s3://<stack-name>-root

aws cloudfront create-invalidation --distribution-id <distribution-id> --paths "/index.html /200.html"

