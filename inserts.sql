begin transaction;
insert into client (login, password) values ('andrew', 'andrew');
insert into outbox (aggregate_type, aggregate_id, type, payload) values ('client', 2, 'INSERT', '{"login": "andrew", "password": "andrew"}');
commit;

begin transaction;
insert into client (login, password) values ('lell', 'lell');
insert into outbox (aggregate_type, aggregate_id, type, payload) values ('client', 3, 'INSERT', '{"login": "lell", "password": "lell"}');
commit;