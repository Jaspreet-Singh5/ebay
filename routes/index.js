var express = require("express"),
    router = express.Router(),
    mysql = require("mysql");

// Create connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'courses'
});

// Connect to database
db.connect((err) => {
    if (err) {
        throw err;
    }

    console.log("MySql Connected...");
});

// LANDING PAGE
router.get("/", function (req, res) {

    let sql1 = `
        SELECT DISTINCT course_name, course_description
        FROM courses;
    `;
    
    let query1 = db.query(sql1, (err, Courses) => {
         if (err) throw err;
         console.log(Courses);

         res.render("landing.ejs", { Courses: Courses });  
     });
});

module.exports = router;