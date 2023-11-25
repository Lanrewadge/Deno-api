FROM hayd/alpine-deno:1.0.0

EXPOSE 3030

WORKDIR /app

USER deno

COPY . .
RUN deno cache main.ts

CMD ["run", "--allow-net", "main.ts"]
