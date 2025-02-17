const express = require("express");
const app = express();

app.get("/api/test", (req, res) => {
  res.json({ message: "Hello from SmartMotos!" });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
