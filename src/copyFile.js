const fs = require("fs");

const src = "./src/index.d.ts";
const dest = "./dist/index.d.ts";

fs.copyFileSync(src, dest);
