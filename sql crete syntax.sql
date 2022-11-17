

create database minorproject;
use minorproject; 
CREATE TABLE login(
    
    user_name VARCHAR(50),
    email varchar(50) primary key,
    password varchar(50)
    
);  
create  table authentication(

 username varchar(250),
email varchar(50),
password varchar(50),
usertype varchar(50)
 
 


);  
insert into authentication values("navya","navya@iiti.ac.in","navya","admin");
select * from authentication;
CREATE TABLE user (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    dob DATE,
    gender CHAR(5),
    father_name VARCHAR(50),
    mother_name VARCHAR(50),
    phonenumber CHAR(10),
    address VARCHAR(255) 
);
insert into user
values 
(1001,"sai ram ","1980-10-01","M","rayudu","shivani","9564872315","street 3 london hsno 100"),
(1002,"keerthi bhatt","1968-12-02","F","amardeep","tejaswini","9587642318","street 1 london hsno 101"),
(1003,"harsha seth","1956-07-03","M","prabhas","anuska","5264897315","street 9 london hsno 137"),
(1004,"sejal dev","1990-08-04","M","viswak","pragya","9587642118","street 1 london hsno 246"),
(2001,"kajal agarwal","1996-06-05","F","shanmukh","deepthi","9587662318","street 3 london hsno 420"),
(2002,"uday kiran","1956-06-06","M","srihan","sirisha","9587642358","street 6 london hsno 902"),
(2003,"lalit kumar","1974-09-07","M","rohith","marina","9587649318","street 3 london hsno 293"),
(2004,"jashwanth singh","1979-08-08","M","hanumaiah","anuradha","9587742318","street 1 london hsno 900"),
(2005,"mani yadav","1982-08-09","M","neeraj","anitha","9587642888","street 8 london hsno 023"),
(2006,"navveen krishna","1964-05-10","F","rushi","sireesha","9586642318","street 1 london hsno 201"),
(2007,"vinay madhav","1994-07-11","M","snehith","likitha","9587646618","street 2 london hsno 956"),
(3001,"rohit fahad","2004-08-12","M","mahendra","indhu","9587692318","street 3 london hsno 781"),
(3002,"harshinikola ","2004-09-13","F","pradeep","srikanya","9587688818","street 6 london hsno 561"),
(3003,"samrat chandh","2004-12-14","M","praveenrao","jony manoha","9587642338","street 7 london hsno 207"),
(3004,"sana singh","2004-10-15","F","nandkumar","vandana","9589642318","street 6 london hsno 956"),
(3005,"harsha uday","2003-09-16","M","sankar","niveditha","9587692318","street 4 london hsno 856"),
(3006,"hasini venkat","2002-07-17","F","vara prasad","maheswari","9557642318","street 5 london hsno 321"),
(3007,"nanda mali","2004-05-18","M","satvik","sampi","9567642318","street 9 london hsno 298"),
(3008,"vanaja lakshmi","2004-03-19","F","surya","jyothika","9587643218","street 1 london hsno 201"),
(3009,"ravi kumar","2003-01-20","M","abhijith","harika","9587624318","street 6 london hsno 264"),
(3010,"rani dev","2001-11-21","F","manas","priyanka","9587642218","street 9 london hsno 671"),
(3011,"raju yadav","2004-12-22","M","sreeram","hamida","9587642318","street 5 london hsno 651"),
(3012,"lakshmi reddy","2004-10-23","F","swami","sangeetha","9887642318","street 1 london hsno 143"),
(3013,"prem kiran","2004-09-24","M","radhesh","radha","9585542318","street 4 london hsno 521"),
(3014,"priyamani","2004-08-25","F","sreenu","rama devi","9587644418","street 6 london hsno 361"),
(3015,"ravi kiran","2004-07-26","M","devendra","devayani","9587643918","street 5 london hsno 956"),
(3016,"lalitha reddy","2004-06-27","F","rishikesh","vasudhara","7887642318","street 3 london hsno 281"),
(3017,"praveen maurya","2004-05-28","M","mohan","priyanka","9587646518","street 1 london hsno 261"),
(3018,"priya sri","2005-05-31","F","murali","nithya","9589942318","street 4 london hsno 210"),
(3019,"kethan harsha","2004-03-02","M","anil","afroz","9599942318","street 2 london hsno 291"),
(3020,"geethika ","2003-02-15","F","anil kumar","chaitanya","9999642318","street 3 london hsno 253"),
(3021,"aravind talari","2004-01-09","M","pranav kumar","yaswini","9587641218","street 1 london hsno 210"),
(3022,"manoha sundari","2003-11-08","F","haseen","prakeerthi","9582242318","street 3 london hsno 201"),
(3023,"jithendra sahu","2004-10-05","M","fasali","nirshitha","9581642318","street 1 london hsno 201"),
(3024,"anvitha reddy","2003-09-01","F","jeevan","madhavi","9581142318","street 2 london hsno 209"),
(3025,"manoj harsha","2004-08-05","M","lalith","jeevitha","9587645558","street 1 london hsno 261"),
(3026,"mohini priya","2003-07-09","F","rajashekar","neeraja","9587611118","street 1 london hsno 202"),
(3027,"mani manas","2001-06-10","M","vijay","rashmika","9581777318","street 2 london hsno 209"),
(3028,"anusha chowdhary","2002-05-11","F","karthikeyan","keerthi","9585511318","street 2 london hsno 208");


CREATE TABLE teaching_staff (
    teacher_id INT PRIMARY KEY, 
    user_name  varchar(50),
    qualification VARCHAR(255),
    salary INT,
    experience INT,
    contact_no varchar(50),
    FOREIGN KEY (teacher_id) 
        REFERENCES user (user_id) on delete cascade
);
insert into teaching_staff
values
(2001,"kajal agarwal","phd",100000,5,"9587662318"),
(2002,"uday kiran","msc",90000,7,"9587642358"),
(2003,"lalit kumar","msc",70000,5,"9587649318"),
(2004,"jashwanth singh","mtech",75000,12,"9587742318"),
(2005,"mani yadav","mtech",78000,5,"9587642888"),
(2006,"navveen krishna","mtech",81000,5,"9586642318"),
(2007,"vinay madhav","btech",62000,10,"9587646618"); 

CREATE TABLE students(
    student_id INT PRIMARY KEY, 
    btech_year int ,
    cgpi float,
    FOREIGN KEY (student_id)
        REFERENCES user (user_id) on delete cascade
);
insert into students
values
(3001,1,9),
(3002,1,9.5),
(3003,1,8),
(3004,1,8.2),(3005,1,9.2),(3006,1,9.4),(3007,1,5.2),(3008,2,5.5),(3009,2,7.5),(3010,2,8.9),(3011,2,6.2),(3012,2,8.8),
(3013,2,9.6),(3014,2,8.6),(3015,3,8.5),(3016,3,7.6),(3017,3,6.9),(3018,3,10),(3019,3,9.8),(3020,3,9.6),(3021,3,7.4),(3022,4,8.9),(3023,4,6.8),(3024,3,4.8),(3025,4,5.8),(3026,4,8.3),(3027,4,8.6),
(3028,4,9);
CREATE TABLE non_teaching_staff (
    non_teaching_id INT PRIMARY KEY,
    salary INT,
    dept_name VARCHAR(50),
    FOREIGN KEY (non_teaching_id)
        REFERENCES user (user_id) on delete cascade
);
insert into non_teaching_staff
values
(1001,40000,"maintaince"),
(1002,35000,"maintainance"),
(1003,32000,"maintainance"),
(1004,37000,"accountant");

CREATE TABLE hostel (
    hostel_id INT PRIMARY KEY,
    hostel_name VARCHAR(255),
    warden_name VARCHAR(255),
    capacity INT
);
insert into hostel
values
(4001,"DA","keerthi bhatt","500"),
(4002,"apj","sai ram","580"),
(4003,"cvr","harsha seth","620");

CREATE TABLE residesin (
    student_id INT PRIMARY KEY,
    hostel_id INT,
    room_no INT,
    FOREIGN KEY (student_id)
        REFERENCES user(user_id) on delete cascade on update cascade,
    FOREIGN KEY (hostel_id)
        REFERENCES hostel (hostel_id) on delete cascade on update cascade
);
insert into residesin
values

(3001,4002,555),(3002,4001,452),(3003,4002,982),(3004,4001,332),(3005,4003,212),(3006,4001,312),(3007,4002,412),
(3008,4001,865),(3009,4003,333),(3010,4001,642),(3011,4002,222),(3012,4001,222),(3013,4002,122),(3014,4001,422),
(3015,4002,555),(3016,4001,121),(3017,4002,446),(3018,4001,892),(3019,4002,662),(3020,4001,496),(3021,4002,462),
(3022,4001,111),(3023,4002,234),(3024,4001,468),(3025,4003,882),(3026,4001,992),(3027,4003,482),(3028,4001,442);


CREATE TABLE clubs (
    club_id INT PRIMARY KEY,
    club_name VARCHAR(50),
    club_head_id INT,
    FOREIGN KEY (club_head_id)
        REFERENCES user (user_id) on delete cascade
);
insert into clubs
values
(5001,"e-cell",3005),
(5002,"programming",3009),
(5003,"alumni-cell",3018);

CREATE TABLE participates_in (
    student_id int,
    club_id INT,
    
    FOREIGN KEY (club_id)
        REFERENCES clubs (club_id) on delete cascade
);
insert into participates_in
values
(3001,5002),(3002,5001),(3003,5002),(3004,5001),(3005,5003),(3006,5001),(3007,5002),
(3008,5001),(3009,5003),(3010,5001),(3011,5002),(3012,5001),(3013,5002),(3014,5001),
(3015,5002),(3016,5001),(3017,5002),(3018,5001),(3019,5002),(3020,5001),(3021,5002),
(3022,5001),(3023,5002),(3024,5001),(3025,5003),(3026,5001),(3027,5003),(3028,5001);

CREATE TABLE mess (
    mess_id INT PRIMARY KEY,
    mess_name varchar(200)
);
insert into mess
values
(210,"kanaka");
insert into mess
values

(310,"ajay");

CREATE TABLE mess_student (
    card_no INT primary key,
    mess_id INT,
    
    FOREIGN KEY (mess_id)
        REFERENCES mess(mess_id) on delete cascade on update cascade
);
insert into mess_student
values
(1,210),
(2,210),
(3,310),
(4,310),
(5,310),
(6,310),
(7,310),
(8,210),
(9,310),
(10,310),
(11,210),
(12,210),
(13,310),
(14,210),
(15,210),
(16,310),
(17,310),
(18,210),
(19,310),
(20,210),
(21,210),
(22,310),
(23,210),
(24,310),
(25,310),
(26,310),
(27,210),
(28,310);

CREATE TABLE apply_for (  

    card_no INT PRIMARY KEY,
    student_id INT,
    FOREIGN KEY (student_id)
        REFERENCES students(student_id) on delete cascade,
    FOREIGN KEY (card_no)
        REFERENCES mess_student(card_no) on delete cascade on update cascade
);
insert into apply_for
values
(1,3001),
(2,3002),
(3,3003),
(4,3004),
(5,3005),
(6,3006),
(7,3007),
(8,3008),
(9,3009),
(10,3010),
(11,3011),
(12,3012),
(13,3013),
(14,3014),
(15,3015),
(16,3016),
(17,3017),
(18,3018),
(19,3019),
(20,3020),
(21,3021),
(22,3022),
(23,3023),
(24,3024),
(25,3025),
(26,3026),
(27,3027),
(28,3028);

CREATE TABLE fees ( 
student_id int,
    fee_id INT PRIMARY KEY,
    due_fee INT,
    paid_fee INT
);
insert into fees
values
(3001,9001,30000,70000),
(3002,9002,90000,110000),
(3003,9003,20000,280000),
(3004,9004,30000,70000),
(3005,9005,30000,17000),
(3006,9006,130000,17000),
(3007,9007,40000,160000),
(3008,9008,70000,130000),
(3009,9009,80000,220000),
(3010,9010,20000,80000),
(3011,9011,50000,150000),
(3012,9012,125000,175000),
(3013,9013,55000,45000),
(3014,9014,55000,145000),
(3015,9015,55000,245000),
(3016,9016,25000,75000),
(3017,9017,25000,175000),
(3018,9018,25000,275000),
(3019,9019,15000,85000),
(3020,9020,15000,185000),
(3021,9021,15000,285000),
(3022,9022,60000,40000),
(3023,9023,60000,140000),
(3024,9024,60000,240000),
(3025,9025,90000,10000),
(3026,9026,90000,110000),
(3027,9027,90000,210000),
(3028,9028,80000,20000);
CREATE TABLE pays (
    student_id INT,
    fee_id INT,
    FOREIGN KEY (student_id)
        REFERENCES user (user_id) on delete cascade
);
insert into pays
values
(3001,9001),
(3002,9002),
(3003,9003),
(3004,9004),
(3005,9005),
(3006,9006),
(3007,9007),
(3008,9008),
(3009,9009),
(3010,9010),
(3011,9011),
(3012,9012),
(3013,9013),
(3014,9014),
(3015,9015),
(3016,9016),
(3017,9017),
(3018,9018),
(3019,9019),
(3020,9020),
(3021,9021),
(3022,9022),
(3023,9023),
(3024,9024),
(3025,9025),
(3026,9026),
(3027,9027),
(3028,9028);


CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    total_fee INT
);
insert into department
values
(6001,"cse",100000),
(6002,"ece",200000),
(6003,"civil",300000);

CREATE TABLE enrolls (
    dept_id INT,
    student_id INT PRIMARY KEY,
    FOREIGN KEY (student_id)
        REFERENCES user (user_id) on delete cascade,
    FOREIGN KEY (dept_id)
        REFERENCES department (dept_id) on delete cascade
);
insert into enrolls
values
(6001,3001),
(6002,3002),
(6003,3003),
(6001,3004),
(6002,3005),
(6003,3006),
(6001,3007),
(6002,3008),
(6003,3009),
(6001,3010),
(6002,3011),
(6003,3012),
(6001,3013),
(6002,3014),
(6003,3015),
(6001,3016),
(6002,3017),
(6003,3018),
(6001,3019),
(6002,3020),
(6003,3021),
(6001,3022),
(6002,3023),
(6003,3024),
(6001,3025),
(6002,3026),
(6003,3027),
(6001,3028);

CREATE TABLE exams (
    exam_id INT PRIMARY KEY,
    exam_name VARCHAR(50),
    total_marks INT,
    mode_of_exam VARCHAR(50)
);

insert into exams
values
(701,"discrete mathematics 1",40,"offline"),
(702,"electrical 2",45,"offline"),
(703,"solid mechanics 3",35,"offline"),
(711,"discrete mathematics 2",40,"offline"),
(712,"electrical 2",45,"offline"),
(713,"solid mechanics 2",35,"offline"),
(721,"discrete mathematics 3",40,"offline"),
(722,"electrical 3",45,"offline"),
(723,"solid mechanics 3",35,"offline"),
(731,"discrete mathematics 4",40,"offline"),
(732,"electrical4",45,"offline"),
(733,"solid mechanics 4",35,"offline"); 

CREATE TABLE holds (
    exam_id INT ,
    dept_id INT,
    FOREIGN KEY (exam_id)
        REFERENCES exams (exam_id),
    FOREIGN KEY (dept_id)
        REFERENCES department (dept_id)
);
insert into holds
values

(701,6001),
(702,6002),
(703,6003),
(721,6001),
(722,6002),
(723,6003),
(731,6001),
(732,6002),
(733,6003),
(711,6001),
(712,6002),
(713,6003);

CREATE TABLE reportcard (
    student_id INT,
    grade_obt CHAR(2),
    marks_obt INT,
    exam_id INT,
    FOREIGN KEY (student_id)
        REFERENCES user (user_id) on delete cascade,
    FOREIGN KEY (exam_id)
        REFERENCES exams (exam_id) on delete cascade
); 
insert into reportcard
values 


(3001,9,29,701),
(3002,10,42,702),
(3003,8,20,703),
(3004,9,09,701),
(3005,9,26,702),
(3006,9,34,703),
(3007,9,40,701), 


(3008,9,19,712),
(3009,9,29,713),
(3010,9,12,711),
(3011,9,29,712),
(3012,9,28,713),
(3013,9,29,711),
(3014,9,29,712),


(3015,9,32,723),
(3016,9,29,721),
(3017,9,17,722),
(3018,9,27,723),
(3019,9,29,721),
(3020,9,41,722),
(3021,9,27,723),


(3022,9,39,731),
(3023,9,37,732),
(3024,9,32,733),
(3025,9,19,731),
(3026,9,39,732),
(3027,9,28,733),
(3028,9,30,731);


CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);
insert into courses
values
(8001,"discrete mathematics 1"),
(8002,"electronics 1"),
(8003,"solid mechanics 1"),
(8011,"discrete mathematics 2"),
(8012,"electronics 2"), 
(8013,"solid mechanics 2"),
(8021,"discrete mathematics 3"), 
(8022,"electronics 3"),
(8023,"solid mechanics 3"),
(8031,"discrete mathematics 4"),
(8032,"electronics 4"),
(8033,"solid mechanics 4");



CREATE TABLE instructs (
    teacher_id INT ,
    course_id INT,
    FOREIGN KEY (teacher_id)
        REFERENCES teaching_staff (teacher_id) on delete cascade,
    FOREIGN KEY (course_id)
        REFERENCES courses (course_id) on delete cascade
);  
insert into instructs
values
(2002,8002),
(2001,8001),
(2004,8022),
(2003,8003),
(2003,8011),
(2003,8012),
(2003,8013),
(2003,8021),
(2003,8023),
(2003,8033),
(2003,8031),
(2003,8032);

create table has(
dept_id int ,
course_id int,
foreign key( dept_id )references department(dept_id) on delete cascade,
foreign key( course_id )references courses(course_id)on delete cascade
);
insert into has
values
(6001,8001),
(6001,8011),
(6001,8021),
(6001,8031),
(6002,8002),
(6002,8012),
(6002,8022),
(6002,8032),
(6003,8003),
(6003,8013),  
(6003,8023), 
(6003,8033);    
