INSERT INTO store(locale)
    VALUES('1234 Spring Creek Ave, Springdale, AR 72764');


INSERT INTO book(book_name, author, details)
    VALUES('Foundation', 'Isaac Asimov', 'First book of Foundation series');

INSERT INTO book(book_name, author, details)
    VALUES('The Second Foundation', 'Isaac Asmivo', 'Second book in Foundation series');

INSERT INTO book(book_name, author, details)
    VALUES('Foundation and Empire', 'Isaac Asmiov', 'Third book in Foundation series');

INSERT INTO book(book_name, author)
    VALUES('I, Robot', 'Isaac Asmiov');

INSERT INTO book(book_name, author)
    VALUES('Enders Game', 'Orson Scott Card');

INSERT INTO book(book_name, author)
    VALUES('Starship Troopers', 'Robert Heinlein');

INSERT INTO book(book_name, author)
    VALUES('Armor', 'John Steakley');

INSERT INTO book(book_name, author)
    VALUES('Dorsai', 'Gordon Dickson');

INSERT INTO book(book_name, author)
    VALUES('The Catcher and the Rye', 'J.D. Salinger');

INSERT INTO user(first_name, last_name) 
    VALUES('Thorin', 'Oakenshield');

INSERT INTO user(first_name, last_name)
    VALUES('Bilbo', 'Baggins');

INSERT INTO user(first_name, last_name)
    VALUES('Frodo', 'Baggins');


INSERT INTO wishlist(user_id, book_id) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Thorin'), 
        (SELECT book_id FROM book WHERE book_name = 'The Second Foundation')
    );

INSERT INTO wishlist(user_id, book_id)
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Bilbo'),
        (SELECT book_id FROM book WHERE book_name = 'Dorsai')
    );

INSERT INTO wishlist(user_id, book_id)
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Frodo'),
        (SELECT book_id FROM book WHERE book_name = 'Armor')
    );
