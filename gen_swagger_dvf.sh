swagger=$(echo "$(curl -X 'GET' 'https://converter.swagger.io/api/convert?url=https%3A%2F%2Felasticimmo.prod.services.f6o.io%2Fswagger%2Fdvf%2Fdvf.swagger.json' -H 'accept: application/json')" | sed 's|\"/\"|\"https://elasticimmo.prod.services.f6o.io"|g')
echo $swagger > swagger-dvf.json
<<<<<<< HEAD
npx @mintlify/scraping@latest openapi-file ./swagger-dvf.json -o api-experimental-reference
=======
npx @mintlify/scraping@3.0.33 openapi-file ./swagger-dvf.json -o api-dvf-reference
#https://elasticimmo-doc.prod.services.f6o.io/



#echo ${$swagger/"/"/https://elasticimmo.prod.services.f6o.io}
#   --output swagger-geography.json
#curl https://elasticimmo.prod.services.f6o.io/swagger/geography/geography.swagger.json --output swagger-geography.json
#sudo npx @mintlify/scraping@latest openapi-file ./swagger-geography.json -o api-geography-reference --overwrite
>>>>>>> 2864a75 (Add - New services doc)
