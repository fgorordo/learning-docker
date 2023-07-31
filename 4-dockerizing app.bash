docker run -dp 3000:3000 `
 -w /app -v "$(pwd):/app" `
 node:18-alpine `
 sh -c "yarn install && yarn run dev"