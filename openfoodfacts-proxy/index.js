
const express = require('express');
   const cors = require('cors');
   const axios = require
('axios'); 

   const app = express();
   const port = 3000; // You can choose any available port

   app.use(cors()); // Enable CORS for all origins

   app.get('/api/products', async (req, res) => {
       try {
           const searchTerm = req.query.search; // Get search term from query parameters
           const response = await axios.get(`https://world.openfoodfacts.org/cgi/search.pl?search_terms=${searchTerm}&json=1`);
           res.json(response.data);
       } catch (error) {
           console.error(error);
           res.status(500).json({ error: 'Failed to fetch data' });
       }
   });

   app.listen(port, () => {
       console.log(`Proxy server listening on port ${port}`);
   });
