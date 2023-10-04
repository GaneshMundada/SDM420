var express=require('express');
var app= express();

app.use(express.static('public'))

app.get('/',(req,res)=>{
    res.send("Hello World")
})

app.listen(5000)
console.log("Server is running on port 5000")
