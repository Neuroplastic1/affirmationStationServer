# "18430cb82acd61ef5470571ae3d0ab19"


API="http://localhost:4741"
URL_PATH="/recipes"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
