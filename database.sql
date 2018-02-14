CREATE TABLE accounts (
    user_id serial PRIMARY KEY,
    username character varying(12),
    city character varying(128),
    transactions_completed integer,
    transactions_attempted integer,
    account_balance numeric(12,2)
);

INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('shawn', 'chicago', 5, 10, 355.80),
('cherise', 'minneapolis', 9, 9, 4000.00),
('larry', 'minneapolis', 3, 4, 77.01),
('dallas', 'new york', 6, 12, 0.99),
('anthony', 'chicago', 0, 0, 0.00),
('travis', 'miami', 1, 100, 500000.34),
('davey', 'chicago', 9, 99, 98.04),
('ora', 'phoenix', 88, 90, 3.33),
('grace', 'miami', 7, 9100, 34.78),
('hope', 'phoenix', 4, 10, 50.17);


select * from accounts where city = 'chicago'; -- 1)3 employees , shawn , anthony , davey

select * from accounts where username = 'a'; -- 2)0 employees

update accounts set account_balance = 10 where account_balance = 0 and transactions_attempted = 0; -- 3)updated anthonys account from 0 - 10.00

select * from accounts where transactions_attempted >= 9; --4) 8 employees returned

select username , account_balance from accounts order by account_balance desc limit 3; -- 5) travis , cherise , shawn

select username , account_balance from accounts order by account_balance asc limit 3; -- 6) dallas , ora , anthony

select * from accounts where account_balance > '100'; --7) shawn , cherise, travis

insert into accounts (username, city, transactions_completed, transactions_attempted, account_balance) values ('logan', 'colorado' , 3, 7, 467000.99); -- 8) added

select * from accounts where (city = 'miami' or city = 'phoenix') and transactions_completed < 5;
delete  from accounts where (city = 'miami' or city = 'phoenix') and transactions_completed < 5;
--9) deleted two (didnt catch the names)
