var express    = require("express"),
    app        = express(),
    bodyParser = require("body-parser"),
    mongoose   = require("mongoose");
    
    
mongoose.connect("mongodb://localhost/shelter_app");
app.use(bodyParser.urlencoded({extended:true}));
app.set("view engine", "ejs");

//SCHEMA SETUP 

var shelterSchema = new mongoose.Schema({
    name: String,
    image: String
});

var Shelter = mongoose.model("Shelter", shelterSchema);
    
Shelter.create(
    {
        name: "", 
        image: ""
    }, function(err,trail){
    if(err){
        console.log(err);
    }else{
        console.log("the database is created!");
        console.log(trail);
    }
});


app.get("/", function(req, res){
    res.render("landing");
});

app.get("/shelters", function(req, res){
   
    //get all trails from DB and then render 
    Shelter.find({},function(err,allShelters){
        if(err){
            console.log(err);
        }else{
            res.render("shelters", {shelters:allShelters});
        }
    });
});

app.post("/shelters", function(req, res){
    var name = req.body.name;
    var quantity = req.body.quantity;
    var newShelter = {name:name, image:image};
    //create new trail and save to DB
    Shelter.create(newShelter,function(err,newlyCreated){
        if(err){
            console.log(err);
        }else{
           res.redirect("/shelters"); 
        }
    });
});

app.get("/shelters/new", function(req, res){
    res.render("new.ejs");
});


// Change this part below.... env.PORT is only for cloud9 

app.listen(process.env.PORT, process.env.IP, function(){
    console.log("Server has started!"); 
});
