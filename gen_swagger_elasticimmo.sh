swagger=$(echo \
  "$(curl -X 'GET' 'https://converter.swagger.io/api/convert?url=https://elasticimmo.prod.services.f6o.io/swagger/elasticimmo/elastic-immo.swagger.json' -H 'accept: application/json')" \
  | sed 's|\"https://api.f6o.co/\"|\"https://api.f6o.co"|g')
echo $swagger > swagger-elasticimmo.json
npx @mintlify/scraping@3.0.33 openapi-file ./swagger-elasticimmo.json -o api-elasticimmo-reference