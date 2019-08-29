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
        SELECT DISTINCT title, image, description, price
        FROM courses 
        INNER JOIN best_courses ON courses.id=best_courses.COURSE_ID;
    `;

    let sql2 = `
        SELECT DISTINCT title, image, description, price
        FROM courses 
        INNER JOIN latest_courses ON courses.id=latest_courses.COURSE_ID;
    `;

    let sql3 = `
        SELECT DISTINCT title, image, description, price
        FROM courses 
        INNER JOIN onsale_courses ON courses.id=onsale_courses.COURSE_ID;
    `;

    let query1 = db.query(sql1, (err, bestCourses) => {
        if (err) throw err;
        console.log(bestCourses);

        let query2 = db.query(sql2, (err, latestCourses) => {
            if (err) throw err;
            console.log(latestCourses);

            let query3 = db.query(sql3, (err, onsaleCourses) => {
                if (err) throw err;
                console.log(onsaleCourses);

                res.render("landing.ejs", { bestCourses: bestCourses, latestCourses: latestCourses, saleCourses: onsaleCourses });
            });
        });
     });
});

module.exports = router;