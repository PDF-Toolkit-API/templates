curl -X POST "http://127.0.0.1:8000/api/v1/convert/htmltopdf/" \
  -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2ODMwOTg2MzguNTkzNjkyLCJuYmYiOjE2ODMwOTg2MzguNTkzNjkyLCJzdWIiOiJhcGlfa2V5OjU3YzVhY2IzLThmODEtNDI2MC04MGVmLWM2MTVlZTA3YmNiMyJ9.DND9wa4E2Df7Gy0RIS9XP6EgqNMpVIYPOirdLVSZcs0" \
  -H "Content-Type: application/json" \
  --data '{"source": "'"$(cat tutorials/00-capabilities/file.html | tr '\n' ' ' | sed 's/\"/\\\"/g')"'",
  "header_template": "'"$(cat tutorials/00-capabilities/header.html | tr '\n' ' ' | sed 's/\"/\\\"/g')"'",
  "footer_template": "'"$(cat tutorials/00-capabilities/footer.html | tr '\n' ' ' | sed 's/\"/\\\"/g')"'",
  "delay": "3000",
  "result_type": "file"}' \
  --output tutorials/00-capabilities/result.pdf -w "%{http_code}"