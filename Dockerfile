FROM node:22-bookworm-slim@sha256:5ec23b7c622b00547753bc6ffd78085dd868a68aeb41c8e0a1418f033e13d96d
WORKDIR /app
COPY . .
CMD ["sh", "-c", "npm test && npm run build && node ward-sim.js demo fixtures/wards.json"]
