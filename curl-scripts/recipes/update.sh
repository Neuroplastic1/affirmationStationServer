#!/bin/bash

API="http://localhost:4741"
URL_PATH="/recipes"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
  "recipe": {
    "name": "'"${NAME}"'",
    "ingredients": "'"${INGRED}"'",
    "direction": "'"${DIR}"'"
  }
}'

echo
