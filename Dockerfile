FROM hayd/deno:alpine-1.14.2

WORKDIR /app

COPY ./deps.ts .

# Fetch dependencies before copying the entire app
RUN deno cache --unstable deps.ts

COPY . .

CMD ["run", "--allow-net", "app.ts"]