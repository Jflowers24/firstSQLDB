practice=# SELECT * FROM Staff
practice=# SELECT name FROM Staff WHERE dob = 12152004;
SELECT * FROM Staff JOIN person on id=workid WHERE id = 1;
SELECT * FROM person join books on owner=id where owner =1;
SELECT * FROM BOOKS WHERE illustrator = 'Jeb' and owner = 1;

CREATE TABLE IF NOT EXISTS public.person
(
    name character varying(255) COLLATE pg_catalog."default",
    "number" bigint,
    email character varying(255) COLLATE pg_catalog."default",
    id integer NOT NULL DEFAULT nextval('person_id_seq'::regclass),
    CONSTRAINT person_pkey PRIMARY KEY (id),
    CONSTRAINT unique_email UNIQUE (email),
    CONSTRAINT unique_num UNIQUE ("number")
)

CREATE TABLE IF NOT EXISTS public.Staff
(
    name character varying(255) COLLATE pg_catalog."default",
    workid integer NOT NULL DEFAULT nextval('staff_workid_seq'::regclass),
    dob bigint

)

CREATE TABLE IF NOT EXISTS public.books
(
    author character varying(255) COLLATE pg_catalog."default",
    illustrator character varying(255) COLLATE pg_catalog."default",
    genre character varying(255) COLLATE pg_catalog."default",
    pagenum bigint,
    title character varying(255) COLLATE pg_catalog."default",
    owner integer,
    bookid integer NOT NULL DEFAULT nextval('books_bookid_seq'::regclass),
    CONSTRAINT books_pkey PRIMARY KEY (bookid),
    CONSTRAINT books_owner_fkey FOREIGN KEY (owner)
        REFERENCES public.person (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

INSERT INTO person (name, number email, id)
VALUES('Jerm', 6623109133, 'Jerm@jerm.com', 1)
INSERT INTO person (name, number email, id)
VALUES('Josh', 6623343123, 'Josh@josiah.com', 2)
INSERT INTO person (name, number email, id)
VALUES('Kaleigh', 6621234567, 'kale@kale.com', 3)
INSERT INTO person (name, number email, id)
VALUES('Quack', 6628327519, 'josh@josh.com', 4)
INSERT INTO person (name, number email, id)
VALUES('Kale', 2341111234, 'KAYLEAH@k.com', 5)

INSERT INTO Staff (name, workid, dob)
VALUES('Jeremiah Flowers', 1, 12152004);
INSERT INTO Staff (name, workid, dob)
VALUES('Mina Sanford', 2, 71805);
INSERT INTO Staff (name, workid, dob)
VALUES('Blair Johnson', 3, 6172005);
INSERT INTO Staff (name, workid, dob)
VALUES('Quack', 4, 3041990);


