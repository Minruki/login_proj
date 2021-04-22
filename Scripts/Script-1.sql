INSERT INTO users(id, passwd, email) 
       VALUES('test1', password('1234'), 'test1@test.co.kr');

INSERT INTO users(id, passwd, email) 
       VALUES('test2', password('1234'), 'test2@test.co.kr');
      
select * from users;

select * from users;

SELECT id 
  FROM users 
 WHERE id = 'test1' 
   AND passwd = password('1234');