curl -X POST "https://pdftoolkitapi.com/api/v1/convert/htmltopdf/" \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  --data '{"source": "'"$(cat tutorials/00-capabilities/file.html | tr '\n' ' ' | sed 's/\"/\\\"/g')"'",
  "header_template": "'"$(cat tutorials/00-capabilities/header.html | tr '\n' ' ' | sed 's/\"/\\\"/g')"'",
  "footer_template": "'"$(cat tutorials/00-capabilities/footer.html | tr '\n' ' ' | sed 's/\"/\\\"/g')"'",
  "delay": "3000",
  "result_type": "file"}' \
  --output tutorials/00-capabilities/result.pdf -w "%{http_code}"