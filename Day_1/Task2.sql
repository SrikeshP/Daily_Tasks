CREATE TABLE students;CREATE TABLE 	students(
student_id INT PRIMARY KEY,
 first_name VARCHAR(50),
 last_name VARCHAR(50),
 email VARCHAR(20),
 phone_number BIGINT,
  date_of_birth DATE
  );

CREATE TABLE courses(
course_id INT,
course_name VARCHAR(15),
course_description VARCHAR(200),
credits TINYINT
);

ALTER TABLE students ADD grade VARCHAR(2);
ALTER TABLE students CHANGE phone_number phone_number VARCHAR(15);

INSERT INTO students VALUES(1,"Monkey D","Luffy","luffy@gmail.com","9191918181","2000-04-20","A");
INSERT INTO students VALUES(2,"Roronoa","Zoro","zoro@gmail.com","9191918182","2000-04-22","B");
INSERT INTO students VALUES(3,"Vinsmoke","Sanji","Sanji@gmail.com","9191918183","2000-04-24","C");


INSERT INTO courses VALUES(1,"Java","This Java Programming course is designed for beginners and intermediate programmers who want to learn or enhance their skills in Java",10);
INSERT INTO courses VALUES(2,"AWS","Learn the fundamentals of Amazon Web Services (AWS) to effectively design, deploy, and manage cloud-based solutions.",9);
INSERT INTO courses VALUES(3,"HTML"," Learn the essentials of HTML to create, format, and structure web pages for a solid foundation in web development.",8);
INSERT INTO courses VALUES(4,"CSS"," Master the fundamentals of CSS to style and layout web pages for a polished and responsive design.",8);
INSERT INTO courses VALUES(5,"JAVASCRIPT"," Learn JavaScript to enhance web functionality with dynamic interactions and client-side scripting.",8);

SELECT first_name, last_name,email FROM students  ;

drop table students;

drop database school_management;
