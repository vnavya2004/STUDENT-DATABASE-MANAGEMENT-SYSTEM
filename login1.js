const mysql = require("mysql"); 

var express = require("express"); 
var router = express.Router(); 
const app=express();  
// var con = require('../connection');  



const bodyParser = require("body-parser");
const encoder = bodyParser.urlencoded();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));


 
 app.use("/assets",express.static("assets")); 
 app.set("view engine" , "ejs");
//  app.set("views" , "/.view"); 
const { render } = require('ejs');
const connection = mysql.createConnection({   
     
    host: "localhost", 
    user: "root",
    password: "hanu@2004",
    database: "minorproject"
       
});  

connection.connect(function(error){ 
    if(error) throw error
    else console.log("connected to the database succesfully")
        });


router.get("/",function(req,res,next){
    res.render('loginform');
})  ; 
// login
router.post("/a",function(req,res,next){ 
    var email = req.body.email;
    var password = req.body.password;
    connection.query("select * from authentication where email = ? and password = ?",[email,password],function(error,results,fields){
        if(results.length > 0){ 
            res.redirect("/login1/HOMEDUBLE");
        }else{ 
            res.redirect("/login1/invalid");
        } 
        res.end();
    }) 
 })    
 router.get("/HOMEDUBLE",function(req,res,next){
    res.render("HOMEDUBLE");

}); 
router.get("/invalid",function(req,res,next){
    res.render("invalid");

});

 router.get("/register",function(req,res,next){
    res.render("registerform");
}) ; 
router.get("/registrationsuccess",function(req,res,next){
    res.render("registrationsuccess");
}) ;
   

    // registration form info 
    router.post("/adduser", function(req,res,next){   
        var name = req.body.name;
        var email = req.body.email;
        var password = req.body.password;
        var usertype= req.body.usertype; 
        // con.connect(function(error){
        //     if(error) throw error;
            // var sql = "insert into authentication(username,email,password,usertype) values ('"+name+"','"+email+"','"+password+"','"+usertype+"')";
        
          connection.query("insert into authentication(username,email,password,usertype) values ('"+name+"','"+email+"','"+password+"','"+usertype+"')",function(error,results){  
            if(error) throw error;
            res.redirect("/login1/registrationsuccess");
          });
        // });

     
    }) ;     

    // add student
   router.post("/addstudents",function(req,res,next){   
        var userid = req.body.userid;
        var username = req.body.username;
        var dob = req.body.dob;
        var gender = req.body.gender;
        var fathername= req.body.fathername;
        var mothername = req.body.mothername;
        var phoneNo= req.body.phoneNo; 
      
        var address = req.body.address;
      
        
        // con.connect(function(error){
        //     if(error) throw error;
            // var sql = "insert into user(user_id,user_name,dob,gender,father_name,mother_name,phonenumber,address)  values ('"+userid+"','"+username+"','"+dob+"','"+gender+"','"+fathername+"','"+mothername+"','"+phoneNo+"','"+address+"')";
        
          connection.query("insert into user(user_id,user_name,dob,gender,father_name,mother_name,phonenumber,address)  values ('"+userid+"','"+username+"','"+dob+"','"+gender+"','"+fathername+"','"+mothername+"','"+phoneNo+"','"+address+"')",function(error,results){
            if(error) throw error;
            res.render("admissionsucess");
          });
        // });

     
    }) ;   
    // delete page
   router.post("/deletestudents",function(req,res,next){ 
        var userid = req.body.userid;
        var username = req.body.username;
        connection.query("delete from user where user_id = ?",[userid],function(error,results,fields){
            if(error) throw error;
            res.render("deletedsuccess");
        }) 
     });



    // homeduble page information 
    router.get("/logout",function(req,res,next) {
        res.render("loginform");
    }) ;   
    
    router.get("/adminportal",(req,res) => {
        res.render("login1");
    }) ;    
   router.post("/admin",function(req,res){ 
        var email = req.body.email;
        var password = req.body.password;
        connection.query("select * from authentication where email = ? and password = ? and usertype='admin'",[email,password],function(error,results,fields){
            if(results.length > 0){ 
                res.redirect("/login1/studentinfoadmin");
            }else{ 
                res.redirect("/login1/accessdenied");
            } 
            res.end();
        }) 
     }) 
    // app.get("/login2",(req,res) => {
    //     res.render("/login2.html");
    // }) ;   
    // app.post("/drop",encoder,function(req,res){ 
    //     var email = req.body.email;
    //     var password = req.body.password;
    //     connection.query("select * from authentication where email = ? and password = ? and usertype='admin'",[email,password],function(error,results,fields){
    //         if(results.length > 0){ 
    //             res.redirect("/dropstudent");
    //         }else{ 
    //             res.redirect("/studentinfo");
    //         } 
    //         res.end();
    //     }) 
    //  }) 
    router.get("/acadamecis",(req,res) => { 
        res.render("acadamecis");
    }) ;   
    router.get("/studentinfo",function(req,res){
        res.render("stude_info");
    }) ;  
    router.get("/studentinfoadmin",function(req,res){
        res.render("studentinfoadmin");
    }) ; 
    router.get("/accessdenied",function(req,res){
        res.render("accessdenied");
    }) ; 
    router.get("/teachers",function(req,res){
        res.render("teachers");
    }) ; 
    router.get("/nonteaching",function(req,res){
        res.render("nonteaching");
    }) ; 
    router.get("/mess",function(req,res){
        res.render("mess");
    }) ; 
    router.get("/hostel",function(req,res){
        res.render("hostel");
    }) ; 
    router.get("/clubshome",function(req,res){
        res.render("clubshome");
    }) ; 
    router.get("/addstudent",function(req,res){
        res.render("addstudent");
    }) ; 
    router.get("/dropstudent",function(req,res){
        res.render("dropstudent");
    }) ;  
    router.get("/adminpage",function(req,res){
        res.render("studentinfoadmin");
    }) ;  
   
    router.get("/alumini",(req,res) => { 
        connection.query('select user_id,user_name from user where user_id in(select student_id from participates_in where club_id in(select club_id from clubs where club_name="alumni-cell"))',(err,data) => {
            if(!err){ 
                res.render('a3', {title:'thank you devuda', action:'list', sampleData:data});
                
            }else{
                console.log(err);
            }
        }) 
    }); 
    router.get("/programming",(req,res) => { 
        connection.query('select user_id,user_name from user where user_id in(select student_id from participates_in where club_id in(select club_id from clubs where club_name="programming"))',(err,data) => {
            if(!err){ 
                res.render('a4', {title:'thank you devuda', action:'list', sampleData:data});
                
            }else{
                console.log(err);
            }
        }) 
    }); 
    router.get("/ecell",(req,res) => { 
        connection.query('select user_id,user_name from user where user_id in(select student_id from participates_in where club_id in(select club_id from clubs where club_name="e-cell"))',(err,data) => {
            if(!err){ 
                res.render('a5', {title:'thank you devuda', action:'list', sampleData:data});
               
            }else{
                console.log(err);
            }
        }) 
    }); 
    router.get("/ajay",(req,res) => { 
        connection.query('select * from mess where mess_name ="ajay"',(err,data) => {
            if(!err){ 
                res.render('a6', {title:'thank you devuda', action:'list', sampleData:data});
                
            }else{
                console.log(err);
            }
        }) 
    });
    router.get("/kanaka",(req,res) => { 
        connection.query('select * from mess where mess_name ="kanaka"',(err,data) => {
            if(!err){ 
                res.render('a7', {title:'thank you devuda', action:'list', sampleData:data});
               
            }else{
                console.log(err);
            }
        }) 
    }); 
    router.get("/teachertable",(req,res) => { 
        connection.query('select * from teaching_staff',(err,data) => {
            if(!err){ 
               
                res.render('a1', {title:'thank you devuda', action:'list', sampleData:data});

               
            }else{
                console.log(err);
            }
        }) 
    });    

  

 

 
      
    router.get("/nonteachertable",(req,res) => { 
        connection.query('select * from non_teaching_staff',(err,data) => {
            if(!err){
                res.render('a2', {title:'thank you devuda', action:'list', sampleData:data});
            }else{
                console.log(err);
            }
        }) 
    });  
   
   
         



     router.post("/personalinfo",encoder,function(req,res){ 
        var userid = req.body.userid;
     
        connection.query("select * from user where user_id = ? ",[userid],function(error,data){
            if(error) throw error;
            res.render('a10', {title:'thank you devuda', action:'list', sampleData:data});
        }) 
     });  
   



    
    router.post("/smess",function(req,res){ 
        var userid = req.body.userid;
       
        connection.query("select * from mess where mess_id in(select mess_id from mess_student where card_no in(select card_no from apply_for where student_id = ?))",[userid],function(error,data){
            if(error) throw error;  
            res.render('a11', {title:'thank you devuda', action:'list', sampleData:data});
           
        })   
     }); 
     router.post("/shostel",function(req,res){ 
        var userid = req.body.userid;
        
        connection.query("(select * from residesin where student_id=?) ",[userid],function(error,data){
            if(error) throw error;
            res.render('a12', {title:'thank you devuda', action:'list', sampleData:data});
        })
       
     }); 
   
     router.post("/sacadamics",function(req,res){ 
        var userid = req.body.userid;
       
        connection.query("select dept_id ,dept_name  from department where dept_id in (select dept_id from enrolls where student_id=?)",[userid],function(error,data){
            if(error) throw error;
            res.render('a13', {title:'thank you devuda', action:'list', sampleData:data});
        }) 
     }); 
     router.post("/scourses",function(req,res){ 
        var userid = req.body.userid;
       
        connection.query("select * from courses where course_id in(select course_id from has where dept_id in(select dept_id from enrolls where student_id=?))",[userid],function(error,data){
            if(error) throw error;
            res.render('a14', {title:'thank you devuda', action:'list', sampleData:data});
        }) 
     });
     router.post("/smarks",function(req,res){ 
        var userid = req.body.userid;
        
        connection.query("select student_id as student_id,grade_obt ,marks_obt ,exam_id as exam_id from reportcard where student_id=?",[userid],function(error,data){
            if(error) throw error;
            res.render('a15', {title:'thank you devuda', action:'list', sampleData:data});
        }) 
     });
     router.post("/sfee",function(req,res){ 
        var userid = req.body.userid;
       
        connection.query("select * from fees where fee_id in (select fee_id from pays where student_id=?)",[userid],function(error,data){
            if(error) throw error;
            res.render('a16', {title:'thank you devuda', action:'list', sampleData:data});
        }) 
     }); 
     router.post("/updatemarks",function(req,res){ 
        var userid = req.body.userid;
        var examid = req.body.examid;
        var grade = req.body.grade;
        var marks = req.body.marks;
       
        connection.query("update reportcard set  marks_obt=?,grade_obt=? where student_id=? and exam_id=? ",[marks,grade,userid,examid],function(error,results,fields){
            if(error) throw error;
            res.render("marksupdatedsuccesfully");
        }) 
     });
     router.post("/updatefee",function(req,res){ 
        var userid = req.body.userid;
        var feepaid = req.body.feepaid;
       
        connection.query("update fees set paid_fee=?,due_fee=(select total_fee from department where dept_id in(select dept_id from enrolls where student_id=?))-? where fee_id in(select fee_id from pays where student_id=?);",[feepaid,userid,feepaid,userid],function(error,results,fields){
            if(error) throw error;
            res.render("updatedfeesuccessfully");
        }) 
     });
     router.post("/updatemess",function(req,res){ 
        var userid = req.body.userid;
        var messid = req.body.messid;
        var cardid = req.body.cardid;
       
        connection.query(" insert into mess_student(card_no,mess_id) values(?,?);",[cardid,messid],function(error,results,fields){
            if(error) throw error 
            connection.query("update apply_for set card_no=? where student_id=?; ",[cardid,userid],function(error,results,fields){
                if(error) throw error 
            res.render("updatedmessinfosuccessfully");
        })   }) 
     }); 
     router.post("/updatehostel",function(req,res){ 
        var userid = req.body.userid;
        var roomno = req.body.roomno;
       
        connection.query("  update residesin set room_no=? where student_id=?;",[roomno,userid],function(error,results,fields){
            if(error) throw error 
           
            res.render("updatedhostelinfosuccessfully");
        })   
     }); 
     router.get("/count",(req,res) => { 
        connection.query('select user_id,user_name from user where user_id>=3000;',(err,data) => {
            if(!err){ 
                res.render('a8', {title:'thank you devuda', action:'list', sampleData:data});
                
            }else{
                console.log(err);
            }
            // if(!err){ 
              
            //     rows.forEach( function(element, index) {
            //         res.send("TOTAL NO OF STUDENTS IN COLLEGE ARE :: " +  );
                    
            //       });
            // }else{
            //     console.log(err);
            // }
        }) 
    }); 
    router.get("/clubregister",(req,res) => {
        res.render("clubadd");
    }) ;  
    

    router.post("/cadd", function(req,res){   
        var userid = req.body.userid;
        var clubid = req.body.clubid;
        var clubname = req.body.clubname;
        // var usertype= req.body.usertype; 
        // con.connect(function(error){
        //     if(error) throw error;
            // var sql = "insert into participates_in(student_id,club_id) values ('"+userid+"','"+clubid+"')";
        
          connection.query("insert into participates_in(student_id,club_id) values ('"+userid+"','"+clubid+"')",function(error,results){  
            if(error) throw error; 
            res.render("clubsuccess");
          });
        // });
       

     
    }) ;   
    router.get("/pay",(req,res) => {
        res.render("payfee");
    }) ;  
    router.post("/cpay",function(req,res){ 
        var userid = req.body.userid;
        
        var feeamount = req.body.feeamount;
       
        connection.query("update fees set paid_fee=?,due_fee=(select total_fee from department where dept_id in(select dept_id from enrolls where student_id=?))-? where fee_id in(select fee_id from pays where student_id=?);",[feeamount,userid,feeamount,userid],function(error,results,fields){
            if(error) throw error;
            res.render("updatedfeesuccess");
        }) 
     }); 
     router.get("/rank",(req,res) => { 
        connection.query('select student_id,cgpi from students order by cgpi desc LIMIT 5;',(err,data) => {
            if(!err){ 
               
                res.render('a9', {title:'thank you devuda', action:'list', sampleData:data});
                
            } 
            else{
                console.log(err);
            }
           
        }) 
    });
 

     
   
 
    module.exports=router;




// app.listen(4500);