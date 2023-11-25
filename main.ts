// main.ts
import { Application, Router } from "https://deno.land/x/oak@v12.6.1/mod.ts";

const app = new Application();
const router = new Router();

router.get("/", (ctx) => {
  ctx.response.body = "Hello, Deno!";
});

app.use(router.routes());
app.use(router.allowedMethods());

const PORT = 3030;
console.log(`Server running on port ${PORT}`);

await app.listen({ port: PORT });
