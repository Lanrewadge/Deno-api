# Dockerfile
FROM denoland/deno:1.14.0

EXPOSE 8080

WORKDIR /app

COPY . .

CMD ["run", "--allow-net", "main.ts"]