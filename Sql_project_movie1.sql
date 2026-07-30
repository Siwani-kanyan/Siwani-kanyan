create database streaming_platform;
use streaming_platform;
create table users (user_id INT Primary Key, name VARCHAR(50) NOT NULL, email VARCHAR(100) unique,
country VARCHAR(50), signup_date DATE);
create table subscription (
    sub_id INT PRIMARY KEY,
    user_id INT,
    plan_type VARCHAR(20),
    price DECIMAL(6,2),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id));
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    release_year INT,
    duration INT);
CREATE TABLE Watch_History (
    watch_id INT PRIMARY KEY,
    user_id INT,
    movie_id INT,
    watch_date DATE,
    watch_time INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id));
CREATE TABLE Ratings (
    rating_id INT PRIMARY KEY,
    user_id INT,
    movie_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id));
    
    INSERT INTO Users (user_id, name, email, country, signup_date) VALUES
(1,'Rahul Sharma','rahul@gmail.com','India','2023-01-12'),
(2,'Priya Singh','priya@gmail.com','India','2023-02-10'),
(3,'John Miller','john@gmail.com','USA','2023-03-15'),
(4,'Aman Gupta','aman@gmail.com','India','2023-04-20'),
(5,'Emily Clark','emily@gmail.com','UK','2023-05-01'),
(6,'Rohit Verma','rohit@gmail.com','India','2023-06-12'),
(7,'Sophia Lee','sophia@gmail.com','Singapore','2023-07-14'),
(8,'Arjun Mehta','arjun@gmail.com','India','2023-08-02'),
(9,'David Brown','david@gmail.com','Canada','2023-09-09'),
(10,'Neha Kapoor','neha@gmail.com','India','2023-10-22'),
(11,'Liam Wilson','liam@gmail.com','Australia','2023-11-05'),
(12,'Sara Ahmed','sara@gmail.com','UAE','2023-11-15'),
(13,'Chen Wei','chen@gmail.com','China','2023-12-01'),
(14,'Elena Rossi','elena@gmail.com','Italy','2023-12-10'),
(15,'Lucas Silva','lucas@gmail.com','Brazil','2023-12-20'),
(16,'Mia Wong','mia@gmail.com','Singapore','2024-01-05'),
(17,'Vikram Rao','vikram@gmail.com','India','2024-01-15'),
(18,'Chloe Smith','chloe@gmail.com','USA','2024-01-20'),
(19,'Omar Hassan','omar@gmail.com','Egypt','2024-02-01'),
(20,'Yuki Tanaka','yuki@gmail.com','Japan','2024-02-10');

INSERT INTO Subscription (sub_id, user_id, plan_type, price, start_date, end_date) VALUES
(1,1,'Basic',199,'2023-01-12','2023-02-12'),
(2,2,'Premium',499,'2023-02-10','2023-03-10'),
(3,3,'Standard',299,'2023-03-15','2023-04-15'),
(4,4,'Premium',499,'2023-04-20','2023-05-20'),
(5,5,'Basic',199,'2023-05-01','2023-06-01'),
(6,6,'Standard',299,'2023-06-12','2023-07-12'),
(7,7,'Premium',499,'2023-07-14','2023-08-14'),
(8,8,'Basic',199,'2023-08-02','2023-09-02'),
(9,9,'Standard',299,'2023-09-09','2023-10-09'),
(10,10,'Premium',499,'2023-10-22','2023-11-22'),
(11,11,'Basic',199,'2023-11-05','2023-12-05'),
(12,12,'Standard',299,'2023-11-15','2023-12-15'),
(13,13,'Premium',499,'2023-12-01','2024-01-01'),
(14,14,'Basic',199,'2023-12-10','2024-01-10'),
(15,15,'Standard',299,'2023-12-20','2024-01-20'),
(16,16,'Premium',499,'2024-01-05','2024-02-05'),
(17,17,'Basic',199,'2024-01-15','2024-02-15'),
(18,18,'Standard',299,'2024-01-20','2024-02-20'),
(19,19,'Premium',499,'2024-02-01','2024-03-01'),
(20,20,'Basic',199,'2024-02-10','2024-03-10');

INSERT INTO Movies (movie_id, title, genre, release_year, duration) VALUES
(1,'The Last Kingdom','Action',2022,130),
(2,'Love Forever','Romance',2021,110),
(3,'Space Mission','Sci-Fi',2023,140),
(4,'Haunted Night','Horror',2020,95),
(5,'The Detective','Thriller',2022,125),
(6,'Comedy House','Comedy',2019,100),
(7,'Future World','Sci-Fi',2024,135),
(8,'Family Trip','Drama',2021,115),
(9,'War Zone','Action',2023,145),
(10,'Mystery Lake','Thriller',2020,120),
(11,'Dark Forest','Horror',2024,88),
(12,'Speed Racer','Action',2021,105),
(13,'City Lights','Drama',2018,140),
(14,'Alien Attack','Sci-Fi',2025,150),
(15,'Funny Bone','Comedy',2022,92),
(16,'Ocean Secret','Documentary',2023,80),
(17,'Silent Killer','Thriller',2021,118),
(18,'Red Sky','Action',2024,122),
(19,'First Love','Romance',2023,105),
(20,'The Ghost','Horror',2019,110);

INSERT INTO Watch_History (watch_id, user_id, movie_id, watch_date, watch_time) VALUES
(1,1,3,'2024-01-10',120),(2,2,1,'2024-01-12',130),(3,3,5,'2024-01-14',100),
(4,4,2,'2024-01-16',90),(5,5,4,'2024-01-18',80),(6,6,3,'2024-01-19',110),
(7,7,7,'2024-01-20',135),(8,8,9,'2024-01-22',140),(9,9,6,'2024-01-23',95),
(10,10,10,'2024-01-25',120),(11,1,5,'2024-02-01',110),(12,2,3,'2024-02-03',125),
(13,4,7,'2024-02-04',130),(14,6,9,'2024-02-05',140),(15,8,1,'2024-02-06',120),
(16,11,11,'2024-02-07',85),(17,12,12,'2024-02-08',100),(18,13,14,'2024-02-09',150),
(19,14,16,'2024-02-10',80),(20,15,18,'2024-02-11',120);

INSERT INTO Ratings (rating_id, user_id, movie_id, rating, review_date) VALUES
(1,1,3,5,'2024-01-11'),(2,2,1,4,'2024-01-12'),(3,3,5,4,'2024-01-15'),
(4,4,2,3,'2024-01-17'),(5,5,4,5,'2024-01-19'),(6,6,3,4,'2024-01-20'),
(7,7,7,5,'2024-01-21'),(8,8,9,4,'2024-01-22'),(9,9,6,3,'2024-01-23'),
(10,10,10,5,'2024-01-26'),(11,11,11,4,'2024-02-08'),(12,12,12,3,'2024-02-09'),
(13,13,14,5,'2024-02-10'),(14,14,16,4,'2024-02-11'),(15,15,18,5,'2024-02-12'),
(16,1,5,4,'2024-02-02'),(17,2,3,5,'2024-02-04'),(18,4,7,4,'2024-02-05'),
(19,6,9,5,'2024-02-06'),(20,8,1,3,'2024-02-07');

select * from users where country='India';
select * from Movies where release_year > 2020;
select u.name, s.plan_type from users u join subscription s on u.user_id=s.user_id where s.plan_type='Premium';
select title, duration from Movies where duration > 120;
select * from Movies order by release_year desc limit 10;

select country,count(*) as user_count from users group by country;
select sum(price) as total_revenue from subscription;
select genre,avg(duration) as avg_duration from Movies group by genre;
select u.name,sum(wh.watch_time) as total_time from users u join watch_history wh on 
u.user_id = wh.user_id  group by u.user_id, u.name;
select m.title, count(wh.watch_id) as watch_count from Movies m join watch_history wh on 
m.movie_id = wh.movie_id group by m.movie_id, m.title order by watch_count desc limit 5;

select u.name, m.title, wh.watch_date from watch_history wh join users u on wh.user_id = u.user_id
join movies m on wh.movie_id = m.movie_id;
select distinct m.title from movies m join watch_history wh on m.movie_id = wh.movie_id join users u 
on wh.user_id = u.user_id where u.country = 'India';
select u.name, s.plan_type from users u left join subscription s on u.user_id = s.user_id;
select m.title, avg(r.rating) as avg_rating from movies m left join ratings r on
 m.movie_id = r.movie_id group by m.movie_id, m.title;
 select distinct m.title from movies m join ratings r on m.movie_id = r.movie_id where r.rating >4;
 
 select title from Movies where movie_id in(select movie_id from Ratings GROUP BY movie_id 
    HAVING AVG(rating) > (SELECT AVG(rating) FROM Ratings));
select name from users where user_id in(select user_id from watch_history group by user_id having 
count(*)>(select avg(cnt) from (select count(*) as cnt from watch_history group by user_id) as sub));
select genre from movies where movie_id=(select movie_id from watch_history group by movie_id
order by count(*) desc limit 1);
select title from movies where movie_id in ( select movie_id from watch_history group by movie_id
 having count(distinct user_id)>5);
 
 select title,avg(rating) over(partition by m.movie_id) as avg_rating,rank() over(order by avg(rating)
 desc as movie_rank from movies m join ratings r on m.movie_id=r.movie_id group by m.movie_id,m.title;
SELECT title, genre, avg_rating FROM (SELECT m.title, m.genre, AVG(r.rating) as avg_rating,
RANK() OVER(PARTITION BY m.genre ORDER BY AVG(r.rating) DESC) as rnk FROM Movies m JOIN Ratings 
r ON m.movie_id = r.movie_id GROUP BY m.movie_id, m.title, m.genre) as ranked_movies WHERE rnk = 1;
SELECT start_date, price,SUM(price) OVER(ORDER BY start_date) as running_total
FROM Subscription;

delimiter //
create procedure getmoviesbygenre(in genre_name varchar(50)) begin select title, release_year,
duration from movies where genre = genre_name;
end//
delimiter ;
 
