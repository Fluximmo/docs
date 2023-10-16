swagger=$(echo "$(curl -X 'GET' 'https://converter.swagger.io/api/convert?url=https%3A%2F%2Felasticimmo.prod.services.f6o.io%2Fswagger%2Fdvf%2Fdvf.swagger.json' -H 'accept: application/json')" | sed 's|\"/\"|\"https://elasticimmo.prod.services.f6o.io"|g')
echo $swagger > swagger-dvf.json
npx @mintlify/scraping@latest openapi-file ./swagger-dvf.json -o api-experimental-reference