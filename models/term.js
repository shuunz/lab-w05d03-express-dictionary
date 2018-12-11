var db = require('../db/config');
var term = {};

term.getAll = function (req,res,next){
    db.manyOrNone("SELECT * FROM terms;")
    .then(function(result){
        res.locals.term=result;
        next();
    })
    .catch(function(error){
        console.log(error);
        next();
    })
}

term.find = function(req,res,next){
    var id = req.params.id;
    db.oneOrNone("SELECT * FROM terms WHERE id=$1 ;" , [id])
    .then(function(result){
        res.locals.term=result;
        console.log(result);
        next();
    })
    .catch(function(error){
        console.log(error);
        next();
    })
}

term.create = function(req,res,next){
    var terms = {
        name: req.body.name,
        definition: req.body.definition
    }

    db.one(`INSERT INTO terms (name , definition) VALUES ($1,$2) RETURNING id;`, [terms.name, terms.definition, req.params.id])
    .then(function(result){
        res.locals.term_id=result.id;
        next();
    })
    .catch(function(error){
        console.log(error);
        next();
    })
}

term.update = function (req,res,next){
    var term = {
        name: req.body.name,
        definition: req.body.definition
    }

    db.one(`UPDATE terms SET name = $1 , definition = $2  WHERE id = $3 RETURNING id;`,[term.name, term.definition, req.params.id])
.then(function (result){
    res.locals.term_id=result.id;
    next();
})
.catch(function(error){
    console.log(error);
    next();
})
    
}


term.delete = function (req,res,next){
    db.none(`DELETE FROM terms WHERE id=$1 `, [req.params.id])
    .then(function (){
        console.log('success delete');
        next();
    })
    .catch(function(error){
        console.log(error);
        next();
    })
}
module.exports = term; 