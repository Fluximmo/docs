# Node v14.21.3

curl https://api.fluximmo.io/swagger --output swagger-api-v2.json
npx @mintlify/scraping@latest openapi-file ./swagger-api-v2.json -o api-v2-reference