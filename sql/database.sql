CREATE DATABASE IF NOT EXISTS cakephp_remember_me_demo;

USE cakephp_remember_me_demo;

/* First, create our users table: */
CREATE TABLE users (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    role VARCHAR(20),
    created DATETIME DEFAULT NULL,
    modified DATETIME DEFAULT NULL
);

/* Then insert some users for testing: */
INSERT INTO users (username,password,role,created)
    VALUES ('admin', '29875bad46818337f584b804df1ca98e5f2e9adb', 'admin', NOW());

/* First, create our posts table: */
CREATE TABLE posts (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50),
    body TEXT,
    user_id INT(11),
    created DATETIME DEFAULT NULL,
    modified DATETIME DEFAULT NULL
);

/* Then insert some posts for testing: */
INSERT INTO posts (title,body,user_id,created)
    VALUES ('The title', 'This is the post body.', 1, NOW());
INSERT INTO posts (title,body,user_id,created)
    VALUES ('A title once again', 'And the post body follows.', 1, NOW());
INSERT INTO posts (title,body,user_id,created)
    VALUES ('Title strikes back', 'This is really exciting! Not.', 1, NOW());