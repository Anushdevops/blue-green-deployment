const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Welcome to the Blue Deployment!');
});

const PORT = 8080;
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});

