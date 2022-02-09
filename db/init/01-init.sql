create table client (
    id bigint primary key GENERATED ALWAYS AS IDENTITY,
    login VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

create table outbox (
    id bigint primary key GENERATED ALWAYS AS IDENTITY,
    aggregate_type VARCHAR(255) NOT NULL,
    aggregate_id BIGINT NOT NULL,
    type VARCHAR(255) NOT NULL,
    payload JSONB NOT NULL
);

insert into client (login, password) values ('jamik', 'jamik');

insert into outbox (aggregate_type, aggregate_id, type, payload)
values ('client', 1, 'INSERT', '{"login" : "jamik", "password" : "jamik"}');

create publication outbox_publication for table outbox;