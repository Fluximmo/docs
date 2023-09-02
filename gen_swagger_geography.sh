# Node v14.21.3

curl https://elasticimmo.prod.services.f6o.io/swagger/geography/geography.swagger.json --output swagger-geography.json
sudo npx @mintlify/scraping@latest openapi-file ./swagger-geography.json -o api-geography-reference --overwrite