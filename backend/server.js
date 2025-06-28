const express = require('express');
const app = express();
app.use(express.json());
app.get('/', (req, res) => res.send('Rehearsal Scheduler Pro API'));
// TODO: auth, booking, notifications, payments endpoints
app.listen(3000, () => console.log('API running on port 3000'));
