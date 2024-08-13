ALTER TABLE users ADD username VARCHAR(255);

ALTER TABLE users ADD COLUMN phone VARCHAR(25);

alter table users add PRIMARY KEY (id);

ALTER table users
ADD CONSTRAINT positive_age_check check (age < 130);

SELECT * FROM users WHERE id =1;
select insert_users ();

CREATE OR REPLACE FUNCTION insert_users()
RETURNS VOID AS $$
BEGIN
    FOR i IN 1..129
    LOOP
        INSERT INTO users (username, age)
        VALUES ('user' || i, i);
    END LOOP;
END;
$$ LANGUAGE plpgsql;

TRUNCATE Table users;

-- create table user
CREATE TABLE users (
    id SERIAL PRIMARY key,
    username VARCHAR(200),
    age INT
);

SELECT * from users;

DO $$
BEGIN

RAISE NOTICE 'START GET FUNCTION';
--------------------------
-- CREATE fn crate users;
--------------------------

CREATE OR REPLACE FUNCTION get_text()
RETURNS TEXT AS $$
DECLARE
    in_text TEXT := 'the_text';  
BEGIN
    RETURN 'in_text';
END;
$$; 
LANGUAGE plpgsql;
END 
$$;




DO $$
BEGIN
    RAISE NOTICE 'START GET FUNCTION';
END;
$$;

alter table users
alter column address set default '129 Dinh Phong Phu';

UPDATE users set age = '35' WHERE id = 1380;
select * from users WHERE id =1380;