# Node v14.21.3

#swagger="$(curl -X 'GET' 'https://converter.swagger.io/api/convert?url=https%3A%2F%2Felasticimmo.prod.services.f6o.io%2Fswagger%2Fgeography%2Fgeography.swagger.json' -H 'accept: application/json')"

swagger=$(echo "$(curl -X 'GET' 'https://converter.swagger.io/api/convert?url=https%3A%2F%2Felasticimmo.prod.services.f6o.io%2Fswagger%2Fgeography%2Fgeography.swagger.json' -H 'accept: application/json')" | sed 's|\"/\"|\"https://elasticimmo-doc.prod.services.f6o.io/\"|g')
echo $swagger > swagger-geography.json

#https://elasticimmo-doc.prod.services.f6o.io/



#echo ${$swagger/"/"/https://elasticimmo.prod.services.f6o.io}
#   --output swagger-geography.json
#curl https://elasticimmo.prod.services.f6o.io/swagger/geography/geography.swagger.json --output swagger-geography.json
#sudo npx @mintlify/scraping@latest openapi-file ./swagger-geography.json -o api-geography-reference --overwrite