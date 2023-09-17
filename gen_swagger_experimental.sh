swagger=$(echo "$(curl -X 'GET' 'https://converter.swagger.io/api/convert?url=https%3A%2F%2Felasticimmo.prod.services.f6o.io%2Fswagger%2Fcity%2Fcity.swagger.json' -H 'accept: application/json')" | sed 's|\"/\"|\"https://elasticimmo-doc.prod.services.f6o.io"|g')
echo $swagger > swagger-city.json
npx @mintlify/scraping@3.0.33 openapi-file ./swagger-city.json -o api-experimental-reference

swagger=$(echo "$(curl -X 'GET' 'https://converter.swagger.io/api/convert?url=https%3A%2F%2Felasticimmo.prod.services.f6o.io%2Fswagger%2Fanalytics%2Fanalytics.swagger.json' -H 'accept: application/json')" | sed 's|\"/\"|\"https://elasticimmo-doc.prod.services.f6o.io"|g')
echo $swagger > swagger-analytics.json
npx @mintlify/scraping@3.0.33 openapi-file ./swagger-analytics.json -o api-experimental-reference