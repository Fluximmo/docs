# Node v14.21.3

curl https://api.fluximmo.io/swagger | sed 's|x-api-key|x_api_key|g' | sed 's|{"securitySchemes":{"x_api_key":{"type":"apiKey","in":"header","name":"x_api_key"}}|{"securitySchemes":{"x_api_key":{"type":"apiKey","in":"header","name":"x-api-key"}}|g' > swagger-api-v2.json
#swagger=$(echo "$(curl -X 'GET' 'https://api.fluximmo.io/swagger' -H 'accept: application/json')" | sed 's|x-api-key|x_api_key|g' | sed 's|{"securitySchemes":{"x_api_key":{"type":"apiKey","in":"header","name":"x_api_key"}}|{"securitySchemes":{"x_api_key":{"type":"apiKey","in":"header","name":"x-api-key"}}|g')
#echo $swagger > swagger-api-v2.json
sudo npx @mintlify/scraping@latest openapi-file ./swagger-api-v2.json -o api-search-alert-reference --overwrite