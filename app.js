const express = require('express')

const app = express()

const PORT = 3000;

app.get("/", (req, res) => {
    res.send("<p>Hello World!111</p>")
})

app.listen(PORT, () => {
    console.log('端口', 3000)
})